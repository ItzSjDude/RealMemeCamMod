#!/bin/bash

# --- Patching Script for Realmeme Camera Mod ---
# This script removes conflicting Oplus classes from the base ROM framework
# to allow our advanced shims in oplus-framework.jar to take precedence.

# Use universal detection for AOSP root based on script location
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
AOSP_ROOT="$(cd "$SCRIPT_DIR/../../.." && pwd)"

echo "[*] Searching for conflicting OplusTypeCastingHelper in frameworks/base..."

# Path to the conflicting file in base AOSP/ROM source
TARGET_FILE="$AOSP_ROOT/frameworks/base/core/java/com/oplus/util/OplusTypeCastingHelper.java"

if [ -f "$TARGET_FILE" ]; then
    echo "[!] Found duplicate class at $TARGET_FILE"
    echo "[*] Removing it to avoid build conflicts..."
    rm -v "$TARGET_FILE"
    echo "[+] Conflict resolved. Now oplus-framework.jar will provide the Advanced version."
else
    echo "[-] OplusTypeCastingHelper not found in frameworks/base. No action needed."
fi

# You can add more cleanup here if other classes conflict (e.g., OplusBuild)
# TARGET_BUILD="$AOSP_ROOT/frameworks/base/core/java/com/oplus/os/OplusBuild.java"
# if [ -f "$TARGET_BUILD" ]; then
#     rm -v "$TARGET_BUILD"
# fi

echo "[+] Framework patching complete."
