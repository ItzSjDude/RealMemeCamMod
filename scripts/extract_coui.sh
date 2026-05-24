#!/bin/bash
set -e

FIRMWARE_URL=$1
if [ -z "$FIRMWARE_URL" ]; then
  echo "Error: No firmware URL provided"
  exit 1
fi

echo "=== Downloading firmware ==="
if [[ "$FIRMWARE_URL" == *drive.google.com* ]]; then
  gdown --fuzzy "$FIRMWARE_URL" -O firmware.zip
elif [[ "$FIRMWARE_URL" == *payload.bin* ]]; then
  aria2c -x 16 -s 16 "$FIRMWARE_URL" -o payload.bin
else
  aria2c -x 16 -s 16 "$FIRMWARE_URL" -o firmware.zip
fi

if [ -f firmware.zip ]; then
  unzip -o firmware.zip
fi

# Locate payload.bin
if [ ! -f payload.bin ]; then
  PAYLOAD_PATH=$(find . -name "payload.bin" -type f | head -n 1)
  if [ -n "$PAYLOAD_PATH" ]; then
    mv "$PAYLOAD_PATH" payload.bin
  else
    echo "ERROR: Cannot find payload.bin"
    exit 1
  fi
fi

echo "=== Dumping payload.bin ==="
mkdir -p payload_output
payload-dumper-go -o payload_output payload.bin

echo "=== Extracting system image ==="
SUPER_IMG=$(find payload_output -name "super.img" | head -n 1)
if [ -z "$SUPER_IMG" ]; then
  SYSTEM_IMG=$(find payload_output -name "system.img" | head -n 1)
  if [ -z "$SYSTEM_IMG" ]; then
    echo "No super.img or system.img found"
    exit 1
  fi
  mkdir -p system_mount
  sudo mount -t erofs -o ro "$SYSTEM_IMG" system_mount || sudo mount -t ext4 -o ro "$SYSTEM_IMG" system_mount
  source_dir="system_mount"
else
  mkdir -p super_extracted
  lpunpack "$SUPER_IMG" super_extracted
  SYSTEM_EXT=$(find super_extracted -name "system.img" | head -n 1)
  if [ -z "$SYSTEM_EXT" ]; then
    echo "No system.img inside super"
    exit 1
  fi
  mkdir -p system_mount
  sudo mount -t erofs -o ro "$SYSTEM_EXT" system_mount || sudo mount -t ext4 -o ro "$SYSTEM_EXT" system_mount
  source_dir="system_mount"
fi

# Create output folder
mkdir -p cos_extras

echo "=== Searching for COUI AppCompat ==="
COUI_APK=$(find "$source_dir" -path "*/app/COUIAppCompat/COUIAppCompat.apk" -type f | head -n 1)
if [ -n "$COUI_APK" ]; then
  cp "$COUI_APK" cos_extras/COUIAppCompat.apk
  echo "✅ Saved to cos_extras/COUIAppCompat.apk"
else
  echo "⚠️ COUIAppCompat.apk not found. Falling back to framework JARs..."
fi

OPLUS_JAR=$(find "$source_dir" -path "*/framework/oplus-framework.jar" -type f | head -n 1)
if [ -n "$OPLUS_JAR" ]; then
  cp "$OPLUS_JAR" cos_extras/oplus-framework.jar
  echo "✅ Saved to cos_extras/oplus-framework.jar"
fi

FRAMEWORK_JAR=$(find "$source_dir" -path "*/framework/framework.jar" -type f | head -n 1)
if [ -n "$FRAMEWORK_JAR" ]; then
  cp "$FRAMEWORK_JAR" cos_extras/framework.jar
  echo "✅ Saved to cos_extras/framework.jar"
fi

# Optional: verify class presence
if command -v javap &> /dev/null && [ -f cos_extras/oplus-framework.jar ]; then
  echo "=== Verifying class in oplus-framework.jar ==="
  mkdir -p jar_check
  unzip -q cos_extras/oplus-framework.jar -d jar_check
  if find jar_check -name "*.class" | xargs grep -l "com.coui.appcompat.segmentbutton.COUISegmentButtonLayout" 2>/dev/null; then
    echo "✅ Target class found in oplus-framework.jar"
  elif find jar_check -name "*.class" | xargs grep -l "com.oplus.graphics.OplusPathAdapter" 2>/dev/null; then
    echo "✅ OplusPathAdapter found – dependency resolved"
  fi
  rm -rf jar_check
fi

# Extract metadata
MARKET_NAME=$(find "$source_dir" -name "build.prop" -exec grep -oP 'ro.product.marketname=\K.*' {} \; 2>/dev/null | head -n1)
MODEL=$(find "$source_dir" -name "build.prop" -exec grep -oP 'ro.product.model=\K.*' {} \; 2>/dev/null | head -n1)
ANDROID_VER=$(find "$source_dir" -name "build.prop" -exec grep -oP 'ro.build.version.release=\K.*' {} \; 2>/dev/null | head -n1)

cat > extracted_metadata.env <<EOF
MARKET_NAME="$MARKET_NAME"
MODEL="$MODEL"
ANDROID_VER="$ANDROID_VER"
EOF

# Cleanup
sudo umount "$source_dir" 2>/dev/null || true
rm -rf payload_output super_extracted system_mount

echo "=== Extraction complete. Files are in 'cos_extras/' ==="
ls -lh cos_extras/
