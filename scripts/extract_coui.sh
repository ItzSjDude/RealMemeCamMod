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

# Unpack if it's a ZIP
if [ -f firmware.zip ]; then
  echo "Unzipping firmware.zip..."
  unzip -o firmware.zip
  rm -f firmware.zip   # optional, to save space
fi

# ----- Locate system image (payload.bin or raw img) -----
PAYLOAD_FILE=""
SYSTEM_IMG=""
SUPER_IMG=""

# 1. Look for payload.bin
if [ -f payload.bin ]; then
  PAYLOAD_FILE="payload.bin"
else
  PAYLOAD_FILE=$(find . -type f -name "payload.bin" -size +100M | head -n 1)
fi

if [ -n "$PAYLOAD_FILE" ]; then
  echo "Found payload.bin at: $PAYLOAD_FILE"
  mkdir -p payload_output
  payload-dumper-go -o payload_output "$PAYLOAD_FILE"
  SUPER_IMG=$(find payload_output -name "super.img" | head -n 1)
  SYSTEM_IMG=$(find payload_output -name "system.img" | head -n 1)
fi

# 2. If no payload.bin, look for system.img directly (Fastboot ROM style)
if [ -z "$SYSTEM_IMG" ]; then
  SYSTEM_IMG=$(find . -type f -name "system.img" -size +100M | head -n 1)
  if [ -n "$SYSTEM_IMG" ]; then
    echo "Found raw system.img at: $SYSTEM_IMG"
  fi
fi

# 3. If still nothing, look for super.img (contains system inside)
if [ -z "$SYSTEM_IMG" ] && [ -z "$SUPER_IMG" ]; then
  SUPER_IMG=$(find . -type f -name "super.img" -size +100M | head -n 1)
  if [ -n "$SUPER_IMG" ]; then
    echo "Found super.img at: $SUPER_IMG – extracting system.img..."
    mkdir -p super_extracted
    lpunpack "$SUPER_IMG" super_extracted
    SYSTEM_IMG=$(find super_extracted -name "system.img" | head -n 1)
  fi
fi

# 4. Fallback: maybe system.img inside a subfolder like OOS_FILES_HERE (already found by find above)
if [ -z "$SYSTEM_IMG" ]; then
  echo "ERROR: No system.img or payload.bin found. Check extracted files:"
  ls -la
  exit 1
fi

echo "=== Mounting system.img: $SYSTEM_IMG ==="
mkdir -p system_mount
sudo mount -t erofs -o ro "$SYSTEM_IMG" system_mount 2>/dev/null || sudo mount -t ext4 -o ro "$SYSTEM_IMG" system_mount

# ----- Extract COUI framework -----
mkdir -p cos_extras

echo "Searching for COUI AppCompat..."
COUI_APK=$(find system_mount -path "*/app/COUIAppCompat/COUIAppCompat.apk" -type f | head -n 1)
if [ -n "$COUI_APK" ]; then
  cp "$COUI_APK" cos_extras/COUIAppCompat.apk
  echo "✅ Saved cos_extras/COUIAppCompat.apk"
else
  echo "⚠️ COUIAppCompat.apk not found – looking for framework JARs"
fi

OPLUS_JAR=$(find system_mount -path "*/framework/oplus-framework.jar" -type f | head -n 1)
if [ -n "$OPLUS_JAR" ]; then
  cp "$OPLUS_JAR" cos_extras/oplus-framework.jar
  echo "✅ Saved cos_extras/oplus-framework.jar"
fi

FRAMEWORK_JAR=$(find system_mount -path "*/framework/framework.jar" -type f | head -n 1)
if [ -n "$FRAMEWORK_JAR" ]; then
  cp "$FRAMEWORK_JAR" cos_extras/framework.jar
  echo "✅ Saved cos_extras/framework.jar"
fi

# Verify class (optional)
if command -v javap &> /dev/null && [ -f cos_extras/oplus-framework.jar ]; then
  echo "=== Verifying target class ==="
  mkdir -p jar_check
  unzip -q cos_extras/oplus-framework.jar -d jar_check
  if find jar_check -name "*.class" | xargs grep -l "com.coui.appcompat.segmentbutton.COUISegmentButtonLayout" 2>/dev/null; then
    echo "✅ Class found in oplus-framework.jar"
  elif find jar_check -name "*.class" | xargs grep -l "com.oplus.graphics.OplusPathAdapter" 2>/dev/null; then
    echo "✅ OplusPathAdapter found (dependency resolved)"
  else
    echo "⚠️ Target class not found – may be in COUIAppCompat.apk's dex"
  fi
  rm -rf jar_check
fi

# Extract metadata
BUILD_PROP=$(find system_mount -name "build.prop" | head -n 1)
if [ -n "$BUILD_PROP" ]; then
  MARKET_NAME=$(grep -oP 'ro.product.marketname=\K.*' "$BUILD_PROP" | head -n1)
  MODEL=$(grep -oP 'ro.product.model=\K.*' "$BUILD_PROP" | head -n1)
  ANDROID_VER=$(grep -oP 'ro.build.version.release=\K.*' "$BUILD_PROP" | head -n1)
  cat > extracted_metadata.env <<EOF
MARKET_NAME="$MARKET_NAME"
MODEL="$MODEL"
ANDROID_VER="$ANDROID_VER"
EOF
fi

# Cleanup
sudo umount system_mount 2>/dev/null || true
rm -rf payload_output super_extracted system_mount

echo "=== Extraction complete. Files in cos_extras/ ==="
ls -lh cos_extras/
