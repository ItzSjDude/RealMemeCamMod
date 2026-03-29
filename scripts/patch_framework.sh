#!/bin/bash

# --- Patching Script for Realmeme Camera Mod ---
# This script removes conflicting Oplus classes from the base ROM framework
# to allow our advanced shims in oplus-framework.jar to take precedence.

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
AOSP_ROOT="$(cd "$SCRIPT_DIR/../../.." && pwd)"

echo "[*] Searching for conflicting Oplus classes in frameworks/base..."

# --- List of files to clean up in frameworks/base ---
FILES_TO_REMOVE=(
    "$AOSP_ROOT/frameworks/base/core/java/com/oplus/util/OplusTypeCastingHelper.java"
    "$AOSP_ROOT/frameworks/base/core/java/android/content/res/OplusBaseConfiguration.java"
    "$AOSP_ROOT/frameworks/base/core/java/oplus/content/res/OplusExtraConfiguration.java"
    "$AOSP_ROOT/frameworks/base/core/java/com/oplus/os/OplusBuild.java"
)

for FILE in "${FILES_TO_REMOVE[@]}"; do
    if [ -f "$FILE" ]; then
        echo "[!] Found duplicate class at $FILE"
        rm -v "$FILE"
    fi
done

echo "[+] Framework patching complete."
