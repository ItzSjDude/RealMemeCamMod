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

# Targeted partitions
TARGETED_IMAGES="(my_product|my_stock|system|system_ext|odm|product|vendor|my_engineering|my_region)"

# 3. Process images one by one to save space
echo "📂 Processing partitions one-by-one..."
mkdir -p extracted_files
FOUND=false
FOUND_META=false
touch ../extracted_metadata.env

# Get list of .img files that match our target
IMG_FILES=$(echo "$FILES_LIST" | grep -iE "\.img$" | awk '{print $NF}' | grep -iE "$TARGETED_IMAGES")

for img_path in $IMG_FILES; do
    IMG_NAME=$(basename "$img_path")
    echo "🧐 Processing: $IMG_NAME"
    
    # 3.1 Extract only this image from ZIP
    unzip -j firmware.zip "$img_path" -d .
    
    if [ -f "$IMG_NAME" ]; then
        # 3.2 Unsparse if needed
        if simg2img "$IMG_NAME" "${IMG_NAME}.raw" > /dev/null 2>&1; then
            echo "✨ Image is sparse. Unsparsed successfully."
            RAW_IMG="${IMG_NAME}.raw"
            rm "$IMG_NAME" # Delete sparse version
        else
            RAW_IMG="$IMG_NAME"
        fi

        mkdir -p current_out
        # 3.3 Extract content
        if fsck.erofs --extract="./current_out" "$RAW_IMG" > /dev/null 2>&1; then
            echo "✅ Extracted as EROFS."
        elif 7z x "$RAW_IMG" -o"./current_out" -y > /dev/null 2>&1; then
            echo "✅ Extracted as EXT4/Raw (using 7z)."
        else
            echo "⚠️ Failed to extract $IMG_NAME, skipping..."
        fi

        # 3.4 Search for APK
        if [ "$FOUND" != true ]; then
            ACTUAL_APK=$(find ./current_out -maxdepth 7 -iname "*Photo*.apk" -o -iname "*Gallery*.apk" | head -n 1)
            if [ -n "$ACTUAL_APK" ]; then
                echo "🎯 Found APK: $ACTUAL_APK"
                mkdir -p "../../$TARGET_DIR"
                mv "$ACTUAL_APK" "../../$TARGET_DIR/OplusPhotos.apk"
                FOUND=true
            fi
        fi

        # 3.5 Search for Metadata
        if [ "$FOUND_META" != true ]; then
            ACTUAL_BPROP=$(find ./current_out -name "build.prop" | head -n 1)
            if [ -n "$ACTUAL_BPROP" ]; then
                echo "📄 Extracting metadata from $ACTUAL_BPROP"
                DEVICE=$(grep -E "ro.product.model|ro.product.system.model|ro.display.series" "$ACTUAL_BPROP" | head -n 1 | cut -d'=' -f2)
                VERSION=$(grep -E "ro.build.display.id|ro.system.build.id" "$ACTUAL_BPROP" | head -n 1 | cut -d'=' -f2)
                if [ -n "$DEVICE" ]; then
                    echo "DEVICE=\"$DEVICE\"" >> ../../extracted_metadata.env
                    echo "VERSION=\"$VERSION\"" >> ../../extracted_metadata.env
                    echo "✅ Metadata extracted: $DEVICE | $VERSION"
                    FOUND_META=true
                fi
            fi
        fi

        # 3.6 Cleanup before next image
        rm -rf current_out
        rm -f "$RAW_IMG"
    fi
    
    # If we found both, we could stop, but let's continue to be sure we get the "best" APK 
    # (Actually Oplus stores it in one place, so stopping is fine to save time)
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
