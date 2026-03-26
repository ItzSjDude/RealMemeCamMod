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

# 2. Extract payload.bin or discrete images
echo "📦 Searching for partitions in the archive..."
FILES_LIST=$(unzip -l firmware.zip)

PAYLOAD_PATH=$(echo "$FILES_LIST" | grep "payload.bin" | awk '{print $NF}' | head -n 1)

if [ -n "$PAYLOAD_PATH" ]; then
    echo "✨ Found payload.bin at: $PAYLOAD_PATH. Extracting..."
    unzip -j firmware.zip "$PAYLOAD_PATH"
    rm firmware.zip # Save space
    
    # Step 3: Dump from payload.bin
    echo "🔍 Dumping partitions (my_product, system_ext, my_stock, system)..."
    if [ -f "payload.bin" ]; then
        payload-dumper-go -p my_product,system_ext,my_stock,system payload.bin
        rm payload.bin # Save space
        echo "📜 Files extracted by payload-dumper-go:"
        ls -R extracted/
    else
        echo "❌ payload.bin extraction failed!"
        exit 1
    fi
else
    echo "⚠️ payload.bin NOT found. Checking for direct images..."
    if echo "$FILES_LIST" | grep -qE "\.img"; then
        echo "✅ Direct images found! Extracting all of them..."
        mkdir -p extracted/dummy_dir
        unzip -j firmware.zip "*.img" -d extracted/dummy_dir/
        rm firmware.zip # Save space
    else
        echo "❌ No recognizable partitions found in firmware.zip!"
        exit 1
    fi
fi

# 4. Extract EROFS/EXT4 images one by one to find Gallery APK and Metadata
echo "📂 Searching for Gallery APK and Metadata..."
mkdir -p extracted_files
FOUND=false
FOUND_META=false
touch ../extracted_metadata.env

for img in extracted/dummy_dir/*.img extracted/*/*.img; do
    if [ -f "$img" ]; then
        echo "🧐 Processing $img..."
        
        # Check if the image is sparse and convert to raw if needed
        # simg2img will fail if it's already raw/eroffs, so we check first
        # We try to use simg2img directly, it's safe if it fails on non-sparse
        if simg2img "$img" "${img}.raw" > /dev/null 2>&1; then
            echo "✨ Image is sparse. Unsparsed successfully."
            RAW_IMG="${img}.raw"
        else
            RAW_IMG="$img"
        fi

        mkdir -p current_out
        
        # Try to extract with fsck.erofs
        if fsck.erofs --extract="./current_out" "$RAW_IMG" > /dev/null 2>&1; then
            echo "✅ Extracted as EROFS."
        # Fallback to 7z for EXT4
        elif 7z x "$RAW_IMG" -o"./current_out" -y > /dev/null 2>&1; then
            echo "✅ Extracted as EXT4 (using 7z)."
        else
            echo "⚠️ Failed to extract $img (not EROFS/EXT4 or empty), skipping..."
        fi

        # 1. Search for Photos/Gallery APK (Case Insensitive)
        if [ "$FOUND" != true ]; then
            ACTUAL_APK=$(find ./current_out -iname "*Photo*.apk" -o -iname "*Gallery*.apk" | head -n 1)
            if [ -n "$ACTUAL_APK" ]; then
                echo "✨ Found APK: $ACTUAL_APK! Moving to repo..."
                mv "$ACTUAL_APK" "../../$TARGET_DIR/OplusPhotos.apk"
                FOUND=true
            fi
        fi
        
        # 2. Search for build.prop / Metadata
        if [ "$FOUND_META" != true ]; then
            ACTUAL_BPROP=$(find ./current_out -name "build.prop" | head -n 1)
            if [ -n "$ACTUAL_BPROP" ]; then
                echo "📄 Extracting metadata from build.prop ($ACTUAL_BPROP)..."
                DEVICE=$(grep -E "ro.product.model|ro.product.system.model|ro.product.product.model|ro.display.series" "$ACTUAL_BPROP" | head -n 1 | cut -d'=' -f2)
                VERSION=$(grep -E "ro.build.display.id|ro.system.build.id" "$ACTUAL_BPROP" | head -n 1 | cut -d'=' -f2)
                
                if [ -n "$DEVICE" ]; then
                    echo "DEVICE=\"$DEVICE\"" >> ../../extracted_metadata.env
                    echo "VERSION=\"$VERSION\"" >> ../../extracted_metadata.env
                    echo "✅ Metadata extracted: $DEVICE | $VERSION"
                    FOUND_META=true
                fi
            fi
        fi
        
        # Cleanup to save space
        rm -rf current_out
        rm -f "${img}.raw"
        rm "$img"
    fi
done

cd ../
# rm -rf $TEMP_DIR

if [ "$FOUND" = true ]; then
    echo "🎉 Gallery APK replaced successfully!"
else
    echo "❌ Failed to find OplusPhotos.apk in the provided firmware."
    exit 1
fi
