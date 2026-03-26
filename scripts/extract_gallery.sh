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
    
    # Step 3: Dump from payload.bin
    echo "🔍 Dumping partitions (my_product, system_ext, my_stock, system)..."
    if [ -f "payload.bin" ]; then
        payload-dumper-go -p my_product,system_ext,my_stock,system payload.bin
        echo "📜 Files extracted by payload-dumper-go:"
        ls -R extracted/
    else
        echo "❌ payload.bin extraction failed!"
        exit 1
    fi
else
    echo "⚠️ payload.bin NOT found. Listing all files for debug:"
    echo "$FILES_LIST"
    
    echo "🔍 Checking for direct partition images (.img)..."
    # Check if system.img or my_product.img exist
    if echo "$FILES_LIST" | grep -qE "my_product.img|system_ext.img|system.img"; then
        echo "✅ Direct images found! Extracting them..."
        mkdir -p extracted/dummy_dir # Match payload-dumper-go structure
        unzip -j firmware.zip "*my_product.img" "*system_ext.img" "*system.img" -d extracted/dummy_dir/
    else
        echo "❌ No recognizable partitions found in firmware.zip!"
        exit 1
    fi
fi

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

# 5. Extract Device/ROM Metadata
echo "🔍 Extracting device/ROM metadata..."
touch ../extracted_metadata.env
for img in extracted/dummy_dir/*.img extracted/*/*.img; do
    if [ -f "$img" ]; then
        # Try to find build.prop
        BPROP_PATH=$(extract.erofs --ls --recursive "$img" | grep "build.prop" | head -n 1 | awk '{print $NF}')
        if [ -n "$BPROP_PATH" ]; then
            echo "📄 Extracting build.prop from $img..."
            mkdir -p meta_out
            extract.erofs --extract="./meta_out" --file="$BPROP_PATH" "$img"
            if [ -f "./meta_out/build.prop" ]; then
                DEVICE=$(grep "ro.product.model=" ./meta_out/build.prop | head -n 1 | cut -d'=' -f2)
                VERSION=$(grep "ro.build.display.id=" ./meta_out/build.prop | head -n 1 | cut -d'=' -f2)
                # Fallback if first one is empty
                [ -z "$DEVICE" ] && DEVICE=$(grep "ro.product.system.model=" ./meta_out/build.prop | head -n 1 | cut -d'=' -f2)
                
                echo "DEVICE=\"$DEVICE\"" >> ../../extracted_metadata.env
                echo "VERSION=\"$VERSION\"" >> ../../extracted_metadata.env
                echo "✅ Metadata extracted: $DEVICE | $VERSION"
                break
            fi
        fi
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
