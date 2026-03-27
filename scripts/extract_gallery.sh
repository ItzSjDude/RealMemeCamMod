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
    echo "🤖 Google Drive link detected. Attempting high-speed download with aria2c..."
    # Extract file ID and use a direct link trick
    FILE_ID=$(echo "$URL" | sed -E 's/.*id=([^&/]+).*/\1/; s/.*\/d\/([^&/]+).*/\1/')
    DIRECT_URL="https://docs.google.com/uc?export=download&id=$FILE_ID"
    # Get confirmation token for large files
    CONFIRM=$(curl -sL "$DIRECT_URL" | grep -o 'confirm=[^&" ]*' | head -n 1)
    if [ -n "$CONFIRM" ]; then
        FINAL_URL="${DIRECT_URL}&${CONFIRM}"
    else
        FINAL_URL="$DIRECT_URL"
    fi
    aria2c -s 16 -x 16 -k 1M --file-allocation=none --console-log-level=error "$FINAL_URL" -o firmware.zip
else
    echo "🌍 Direct link detected. Using aria2c with optimized flags..."
    aria2c -s 16 -x 16 -k 1M --file-allocation=none --console-log-level=error "$URL" -o firmware.zip
fi

# Check if download succeeded
if [ ! -f "firmware.zip" ]; then
    echo "❌ Download failed!"
    exit 1
fi

# 2. Identify partitions in the archive
echo "📦 Analyzing archive content..."
# 7z works better for huge ZIPs
FILES_LIST=$(7z l firmware.zip)
echo "📜 Full file list for debug:"
echo "$FILES_LIST"

# Targeted partitions - user specifically requested my_manifest and my_stock
TARGET_LIST="my_manifest my_stock"

# 3. Handle super.img if present (Dynamic Partitions)
SUPER_PATH=$(echo "$FILES_LIST" | grep -i "super.img" | awk '{print $NF}' | head -n 1)
if [ -n "$SUPER_PATH" ]; then
    echo "🏗️ super.img detected. This firmware uses dynamic partitions."
    7z x firmware.zip "$SUPER_PATH" -y -o.
    if [ -f "super.img" ]; then
        echo "✨ Unsparsing super.img..."
        simg2img super.img super.raw
        rm super.img
        echo "📦 Unpacking super.img..."
        mkdir -p extracted_partitions
        lpunpack super.raw extracted_partitions/
        rm super.raw
        # Add extracted partitions to search list
        echo "📜 Partitions extracted from super.img:"
        ls extracted_partitions/
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
    
    # Identify local image (handles _a or _b suffixes from lpunpack)
    LOCAL_IMG=$(ls | grep -iE "^${target}(_[ab])?\.img$" | head -n 1)
    
    # If not found locally, try to find in ZIP
    if [ -z "$LOCAL_IMG" ]; then
        IMG_PATH=$(echo "$FILES_LIST" | grep -iE "/${target}(_[ab])?\.img$| ${target}(_[ab])?\.img$" | awk '{print $NF}' | head -n 1)
        if [ -n "$IMG_PATH" ]; then
            echo "🎯 Extracting $target from ZIP ($IMG_PATH)..."
            7z x firmware.zip "$IMG_PATH" -y -o.
            ACTUAL_EXTRACTED=$(find . -name "$(basename "$IMG_PATH")")
            if [ -n "$ACTUAL_EXTRACTED" ] && [ "$ACTUAL_EXTRACTED" != "./$(basename "$IMG_PATH")" ]; then
                 mv "$ACTUAL_EXTRACTED" "./$(basename "$IMG_PATH")"
            fi
            LOCAL_IMG=$(basename "$IMG_PATH")
        fi
    fi

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
            # Specifically targeting OppoGallery2.apk as per user request
            ACTUAL_APK=$(find ./current_out -maxdepth 7 -iname "OppoGallery2.apk" -o -iname "*Photo*.apk" -o -iname "*Gallery*.apk" | head -n 1)
            if [ -n "$ACTUAL_APK" ]; then
                echo "🎯 Found APK: $ACTUAL_APK"
                mkdir -p "../../$TARGET_DIR"
                # Renaming to OplusPhotos.apk as per request
                mv "$ACTUAL_APK" "../../$TARGET_DIR/OplusPhotos.apk"
                FOUND=true
            fi
        fi

        # 4.4 Search for Metadata (Specifically from my_manifest/build.prop)
        if [ "$FOUND_META" != true ]; then
            ACTUAL_BPROP=$(find ./current_out -name "build.prop" | head -n 1)
            if [ -n "$ACTUAL_BPROP" ]; then
                echo "📄 Extracting metadata from $ACTUAL_BPROP"
                MARKET_NAME=$(grep "ro.vendor.oplus.market.enname=" "$ACTUAL_BPROP" | cut -d'=' -f2)
                MODEL=$(grep "ro.product.model=" "$ACTUAL_BPROP" | cut -d'=' -f2)
                ANDROID_VER=$(grep "ro.build.version.release=" "$ACTUAL_BPROP" | cut -d'=' -f2)
                BUILD_DATE=$(grep "ro.vendor.build.date=" "$ACTUAL_BPROP" | cut -d'=' -f2)
                OTA_VER=$(grep "ro.build.version.ota=" "$ACTUAL_BPROP" | cut -d'=' -f2)

                if [ -n "$MARKET_NAME" ] || [ -n "$MODEL" ]; then
                    echo "MARKET_NAME=\"$MARKET_NAME\"" >> ../extracted_metadata.env
                    echo "MODEL=\"$MODEL\"" >> ../extracted_metadata.env
                    echo "ANDROID_VER=\"$ANDROID_VER\"" >> ../extracted_metadata.env
                    echo "BUILD_DATE=\"$BUILD_DATE\"" >> ../extracted_metadata.env
                    echo "OTA_VER=\"$OTA_VER\"" >> ../extracted_metadata.env
                    echo "✅ Metadata extracted: $MARKET_NAME | $MODEL | Android $ANDROID_VER"
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
