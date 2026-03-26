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

# 2. Extract payload.bin
echo "📦 Extracting payload.bin..."
unzip -j firmware.zip payload.bin || echo "payload.bin not found in root, searching..."

# 3. Dump relevant partitions
# We use payload-dumper-go to only dump partitions that usually contain apps
echo "🔍 Dumping partitions (my_product, system_ext, my_stock, system)..."
# payload-dumper-go -p my_product,system_ext,my_stock,system payload.bin
# (Assuming payload-dumper-go is in PATH)
payload-dumper-go -p my_product,system_ext,my_stock,system payload.bin

# 4. Extract EROFS/EXT4 images
echo "📂 Searching for Gallery APK..."
mkdir -p extracted_files

for img in extracted/*/my_product.img extracted/*/system_ext.img extracted/*/my_stock.img extracted/*/system.img; do
    if [ -f "$img" ]; then
        echo "🧐 Checking $img..."
        # Try to extract using extract.erofs (erofs-utils)
        # Or mount if sudo is available (not in GH Actions easily without workaround)
        # We use 'extract.erofs' or 'fsck.erofs' to list/extract
        extract.erofs --ls --recursive "$img" | grep "OplusPhotos.apk" && {
            echo "✅ Found OplusPhotos.apk in $img! Extracting..."
            # Extract specific file
            # For simplicity in this script, we'll try to find the path and extract it
            APK_PATH=$(extract.erofs --ls --recursive "$img" | grep "OplusPhotos.apk" | awk '{print $NF}')
            extract.erofs --extract="./apk_out" --file="$APK_PATH" "$img"
            
            if [ -f "./apk_out/OplusPhotos.apk" ]; then
                echo "✨ Success! Moving APK to repo..."
                mv "./apk_out/OplusPhotos.apk" "../../$TARGET_DIR/OplusPhotos.apk"
                FOUND=true
                break
            fi
        }
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
