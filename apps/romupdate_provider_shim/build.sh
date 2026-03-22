#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
BUILD="$ROOT/build"
SRC="$ROOT/src"
ANDROID_JAR="${ANDROID_JAR:-$HOME/Android/Sdk/platforms/android-33/android.jar}"
BUILD_TOOLS_D8="${BUILD_TOOLS_D8:-$HOME/Android/Sdk/cmdline-tools/latest/bin/d8}"
BUILD_TOOLS_DIR="${BUILD_TOOLS_DIR:-$HOME/Android/Sdk/build-tools/33.0.2}"
ZIPALIGN="${ZIPALIGN:-$BUILD_TOOLS_DIR/zipalign}"
APKSIGNER="${APKSIGNER:-$BUILD_TOOLS_DIR/apksigner}"
KEYSTORE="$ROOT/debug.keystore"
UNSIGNED_APK="$BUILD/romupdate-provider-shim-unsigned.apk"
ALIGNED_APK="$BUILD/romupdate-provider-shim-aligned.apk"
APK="$ROOT/romupdate-provider-shim.apk"

rm -rf "$BUILD"
mkdir -p "$BUILD/classes" "$BUILD/dex"

aapt package -f -M "$ROOT/AndroidManifest.xml" -I "$ANDROID_JAR" -F "$BUILD/resources.ap_"

mapfile -d '' JAVA_SOURCES < <(find "$SRC" -name '*.java' -print0 | sort -z)

javac \
  -encoding UTF-8 \
  -source 8 \
  -target 8 \
  -cp "$ANDROID_JAR" \
  -d "$BUILD/classes" \
  "${JAVA_SOURCES[@]}"

mapfile -d '' CLASS_FILES < <(find "$BUILD/classes" -name '*.class' -print0 | sort -z)

"$BUILD_TOOLS_D8" \
  --lib "$ANDROID_JAR" \
  --output "$BUILD/dex" \
  "${CLASS_FILES[@]}"

cp "$BUILD/resources.ap_" "$UNSIGNED_APK"
(
  cd "$BUILD/dex"
  zip -q -r "$UNSIGNED_APK" classes.dex
)

if [[ ! -f "$KEYSTORE" ]]; then
  keytool -genkeypair \
    -keystore "$KEYSTORE" \
    -storepass android \
    -keypass android \
    -alias androiddebugkey \
    -dname "CN=Android Debug,O=Android,C=US" \
    -keyalg RSA \
    -keysize 2048 \
    -validity 10000
fi

"$ZIPALIGN" -f 4 "$UNSIGNED_APK" "$ALIGNED_APK"

"$APKSIGNER" sign \
  --ks "$KEYSTORE" \
  --ks-key-alias androiddebugkey \
  --ks-pass pass:android \
  --key-pass pass:android \
  --out "$APK" \
  "$ALIGNED_APK"

echo "$APK"
