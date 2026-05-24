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
  echo "Unzipping firmware.zip..."
  unzip -o firmware.zip
  rm -f firmware.zip
fi

# ----- Locate system image (payload.bin or raw img) -----
PAYLOAD_FILE=""
SYSTEM_IMG=""
SUPER_IMG=""

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

if [ -z "$SYSTEM_IMG" ]; then
  SYSTEM_IMG=$(find . -type f -name "system.img" -size +100M | head -n 1)
  if [ -n "$SYSTEM_IMG" ]; then
    echo "Found raw system.img at: $SYSTEM_IMG"
  fi
fi

if [ -z "$SYSTEM_IMG" ] && [ -z "$SUPER_IMG" ]; then
  SUPER_IMG=$(find . -type f -name "super.img" -size +100M | head -n 1)
  if [ -n "$SUPER_IMG" ]; then
    echo "Found super.img at: $SUPER_IMG – extracting system.img..."
    mkdir -p super_extracted
    lpunpack "$SUPER_IMG" super_extracted
    SYSTEM_IMG=$(find super_extracted -name "system.img" | head -n 1)
  fi
fi

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
# Search anywhere for COUIAppCompat.apk (using sudo to avoid permission issues)
COUI_APK=$(sudo find system_mount -type f -name "COUIAppCompat.apk" 2>/dev/null | head -n 1)
if [ -n "$COUI_APK" ]; then
  sudo cp "$COUI_APK" cos_extras/COUIAppCompat.apk
  sudo chown $(id -u):$(id -g) cos_extras/COUIAppCompat.apk
  echo "✅ Saved cos_extras/COUIAppCompat.apk"
else
  echo "⚠️ COUIAppCompat.apk not found – looking for framework JARs"
fi

OPLUS_JAR=$(sudo find system_mount -type f -name "oplus-framework.jar" 2>/dev/null | head -n 1)
if [ -n "$OPLUS_JAR" ]; then
  sudo cp "$OPLUS_JAR" cos_extras/oplus-framework.jar
  sudo chown $(id -u):$(id -g) cos_extras/oplus-framework.jar
  echo "✅ Saved cos_extras/oplus-framework.jar"
fi

FRAMEWORK_JAR=$(sudo find system_mount -type f -name "framework.jar" 2>/dev/null | head -n 1)
if [ -n "$FRAMEWORK_JAR" ]; then
  sudo cp "$FRAMEWORK_JAR" cos_extras/framework.jar
  sudo chown $(id -u):$(id -g) cos_extras/framework.jar
  echo "✅ Saved cos_extras/framework.jar"
fi

# Verify class using strings (works on APK/JAR without extracting)
echo "=== Verifying target class ==="
TARGET_CLASS="com.coui.appcompat.segmentbutton.COUISegmentButtonLayout"
FOUND=0
if [ -f cos_extras/COUIAppCompat.apk ]; then
  if strings cos_extras/COUIAppCompat.apk | grep -q "$TARGET_CLASS"; then
    echo "✅ Target class found in COUIAppCompat.apk"
    FOUND=1
  fi
fi
if [ $FOUND -eq 0 ] && [ -f cos_extras/oplus-framework.jar ]; then
  if strings cos_extras/oplus-framework.jar | grep -q "$TARGET_CLASS"; then
    echo "✅ Target class found in oplus-framework.jar"
    FOUND=1
  fi
fi
if [ $FOUND -eq 0 ] && [ -f cos_extras/framework.jar ]; then
  if strings cos_extras/framework.jar | grep -q "$TARGET_CLASS"; then
    echo "✅ Target class found in framework.jar"
    FOUND=1
  fi
fi
if [ $FOUND -eq 0 ]; then
  echo "⚠️ Target class not found in any extracted file. It may be missing from this firmware."
fi

# Extract metadata
BUILD_PROP=$(sudo find system_mount -name "build.prop" 2>/dev/null | head -n 1)
if [ -n "$BUILD_PROP" ]; then
  MARKET_NAME=$(sudo grep -oP 'ro.product.marketname=\K.*' "$BUILD_PROP" 2>/dev/null | head -n1)
  MODEL=$(sudo grep -oP 'ro.product.model=\K.*' "$BUILD_PROP" 2>/dev/null | head -n1)
  ANDROID_VER=$(sudo grep -oP 'ro.build.version.release=\K.*' "$BUILD_PROP" 2>/dev/null | head -n1)
  BUILD_DATE=$(sudo grep -oP 'ro.build.date=\K.*' "$BUILD_PROP" 2>/dev/null | head -n1)
  OTA_VER=$(sudo grep -oP 'ro.oplus.version.ota=\K.*' "$BUILD_PROP" 2>/dev/null | head -n1)
  cat > extracted_metadata.env <<EOF
MARKET_NAME="$MARKET_NAME"
MODEL="$MODEL"
ANDROID_VER="$ANDROID_VER"
BUILD_DATE="$BUILD_DATE"
OTA_VER="$OTA_VER"
EOF
fi

# Cleanup
sudo umount system_mount 2>/dev/null || true
rm -rf payload_output super_extracted system_mount

echo "=== Extraction complete. Files in cos_extras/ ==="
ls -lh cos_extras/
