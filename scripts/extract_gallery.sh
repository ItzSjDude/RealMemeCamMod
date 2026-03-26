#!/bin/bash

# Configuration
URL=$1
TARGET_DIR="apps/OplusPhotos"
TEMP_DIR="temp_extraction"

if [ -z "$URL" ]; then
    echo "Usage: $0 [FIRMWARE_URL]"
    exit 1
fi

echo "🚀 Starting Gallery extraction from: $URL"

mkdir -p $TEMP_DIR
cd $TEMP_DIR

# 1. Download Firmware
echo "📥 Downloading firmware..."

if [[ "$URL" == *"drive.google.com"* ]]; then
    echo "🤖 Google Drive link detected. Using gdown..."
    # gdown handles the confirmation tokens for large files
    gdown --fuzzy "$URL" -O firmware.zip
else
    echo "🌍 Direct/Cloud link detected. Using aria2c..."
    aria2c -s 16 -x 16 "$URL" -o firmware.zip
fi

# Check if download succeeded
if [ ! -f "firmware.zip" ]; then
    echo "❌ Download failed!"
    exit 1
fi

# 2. Identify partitions in the archive
echo "📦 Analyzing archive content..."
FILES_LIST=$(unzip -l firmware.zip)
echo "📜 Full file list for debug:"
echo "$FILES_LIST"

# Targeted partitions - added word boundaries or specific patterns
# We want to match my_product.img but NOT vbmeta_my_product.img
TARGET_LIST="my_product my_stock system system_ext odm product vendor my_engineering my_region"

# 3. Handle super.img if present (Dynamic Partitions)
SUPER_PATH=$(echo "$FILES_LIST" | grep -i "super.img" | awk '{print $NF}' | head -n 1)
if [ -n "$SUPER_PATH" ]; then
    echo "🏗️ super.img detected. This firmware uses dynamic partitions."
    unzip -j firmware.zip "$SUPER_PATH" -d .
    if [ -f "super.img" ]; then
        echo "✨ Unsparsing super.img..."
        simg2img super.img super.raw
        rm super.img
        echo "📦 Unpacking super.img..."
        mkdir -p extracted_partitions
        lpunpack super.raw extracted_partitions/
        rm super.raw
        # Add extracted partitions to search list
        mv extracted_partitions/*.img .
        rm -rf extracted_partitions
    fi
fi

# 4. Process images one by one to save space
echo "📂 Processing partitions one-by-one..."
mkdir -p extracted_files
FOUND=false
FOUND_META=false
touch ../extracted_metadata.env

# New discovery logic: check each target word specifically
for target in $TARGET_LIST; do
    echo "🔍 Looking for $target image..."
    # Check if it was in the ZIP OR if we just extracted it from super.img
    IMG_PATH=$(echo "$FILES_LIST" | grep -iE "/${target}\.img$| ${target}\.img$" | awk '{print $NF}' | head -n 1)
    
    # If not in ZIP, it might be in current dir (from super.img)
    if [ ! -f "$target.img" ] && [ -n "$IMG_PATH" ]; then
        echo "🎯 Extracting $target from ZIP..."
        unzip -j firmware.zip "$IMG_PATH" -d .
    fi
    
    # Local file exists? (either from ZIP or super.img)
    LOCAL_IMG=$(ls | grep -iE "^${target}\.img$" | head -n 1)

    if [ -f "$LOCAL_IMG" ]; then
        echo "🎯 Processing $target image: $LOCAL_IMG"
        
        # 4.1 Unsparse
        if simg2img "$LOCAL_IMG" "${LOCAL_IMG}.raw" > /dev/null 2>&1; then
            echo "✨ Image is sparse. Unsparsed successfully."
            RAW_IMG="${LOCAL_IMG}.raw"
            rm -f "$LOCAL_IMG"
        else
            RAW_IMG="$LOCAL_IMG"
        fi

        mkdir -p current_out
        # 4.2 Extract content
        if fsck.erofs --extract="./current_out" "$RAW_IMG" > /dev/null 2>&1; then
            echo "✅ Extracted as EROFS."
        elif 7z x "$RAW_IMG" -o"./current_out" -y > /dev/null 2>&1; then
            echo "✅ Extracted as EXT4/Raw (using 7z)."
        else
            echo "⚠️ Failed to extract $LOCAL_IMG, skipping..."
        fi
        
        rm -f "$RAW_IMG"

        # 4.3 Search for APK
        if [ "$FOUND" != true ]; then
            ACTUAL_APK=$(find ./current_out -maxdepth 7 -iname "*Photo*.apk" -o -iname "*Gallery*.apk" | head -n 1)
            if [ -n "$ACTUAL_APK" ]; then
                echo "🎯 Found APK: $ACTUAL_APK"
                mkdir -p "../../$TARGET_DIR"
                mv "$ACTUAL_APK" "../../$TARGET_DIR/OplusPhotos.apk"
                FOUND=true
            fi
        fi

        # 4.4 Search for Metadata
        if [ "$FOUND_META" != true ]; then
            ACTUAL_BPROP=$(find ./current_out -name "build.prop" | head -n 1)
            if [ -n "$ACTUAL_BPROP" ]; then
                echo "📄 Extracting metadata from $ACTUAL_BPROP"
                DEVICE=$(grep -E "ro.product.model|ro.product.system.model|ro.display.series" "$ACTUAL_BPROP" | head -n 1 | cut -d'=' -f2)
                VERSION=$(grep -E "ro.build.display.id|ro.system.build.id" "$ACTUAL_BPROP" | head -n 1 | cut -d'=' -f2)
                if [ -n "$DEVICE" ]; then
                    echo "DEVICE=\"$DEVICE\"" >> ../extracted_metadata.env
                    echo "VERSION=\"$VERSION\"" >> ../extracted_metadata.env
                    echo "✅ Metadata extracted: $DEVICE | $VERSION"
                    FOUND_META=true
                fi
            fi
        fi

        # 4.5 Cleanup before next image
        rm -rf current_out
        rm -f "$RAW_IMG"
    fi
    
    # Early exit if found
    if [ "$FOUND" = true ] && [ "$FOUND_META" = true ]; then
        echo "✅ Both APK and Metadata found. Finishing early..."
        break
    fi
done

# Cleanup ZIP last
rm -f firmware.zip

cd ../
# rm -rf $TEMP_DIR

if [ "$FOUND" = true ]; then
    echo "🎉 Gallery APK extraction complete!"
else
    echo "❌ Failed to find Photos/Gallery APK in the provided firmware."
    exit 1
fi
