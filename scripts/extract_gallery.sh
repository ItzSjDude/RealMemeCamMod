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
    if echo "$FILES_LIST" | grep -qE "my_product.img|system_ext.img|system.img"; then
        echo "✅ Direct images found! Extracting them..."
        mkdir -p extracted/dummy_dir
        unzip -j firmware.zip "*my_product.img" "*system_ext.img" "*system.img" "*my_stock.img" -d extracted/dummy_dir/
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
        mkdir -p current_out
        
        # Try to extract the whole image
        if fsck.erofs --extract="./current_out" "$img" > /dev/null 2>&1; then
            # 1. Search for OplusPhotos.apk
            if [ "$FOUND" != true ]; then
                ACTUAL_APK=$(find ./current_out -name "OplusPhotos.apk" | head -n 1)
                if [ -n "$ACTUAL_APK" ]; then
                    echo "✨ Found OplusPhotos.apk! Moving to repo..."
                    mv "$ACTUAL_APK" "../../$TARGET_DIR/OplusPhotos.apk"
                    FOUND=true
                fi
            fi
            
            # 2. Search for build.prop / Metadata
            if [ "$FOUND_META" != true ]; then
                ACTUAL_BPROP=$(find ./current_out -name "build.prop" | head -n 1)
                if [ -n "$ACTUAL_BPROP" ]; then
                    echo "📄 Extracting metadata from build.prop..."
                    DEVICE=$(grep "ro.product.model=" "$ACTUAL_BPROP" | head -n 1 | cut -d'=' -f2)
                    VERSION=$(grep "ro.build.display.id=" "$ACTUAL_BPROP" | head -n 1 | cut -d'=' -f2)
                    [ -z "$DEVICE" ] && DEVICE=$(grep "ro.product.system.model=" "$ACTUAL_BPROP" | head -n 1 | cut -d'=' -f2)
                    
                    echo "DEVICE=\"$DEVICE\"" >> ../../extracted_metadata.env
                    echo "VERSION=\"$VERSION\"" >> ../../extracted_metadata.env
                    echo "✅ Metadata extracted: $DEVICE | $VERSION"
                    FOUND_META=true
                fi
            fi
        else
            echo "⚠️ Failed to extract $img (maybe not EROFS), skipping..."
        fi
        
        # Cleanup to save space before next image
        rm -rf current_out
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
