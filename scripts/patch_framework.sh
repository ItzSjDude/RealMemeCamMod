#!/bin/bash

# --- Patching Script for Realmeme Camera Mod ---
# This script removes conflicting Oplus classes from the base ROM framework
# to allow our advanced shims in oplus-framework.jar to take precedence.

# Use universal detection for AOSP root based on script location
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
AOSP_ROOT="$(cd "$SCRIPT_DIR/../../.." && pwd)"

echo "[*] Searching for conflicting OplusTypeCastingHelper in frameworks/base..."

# --- List of files to clean up in frameworks/base ---
CONF_BASE="$AOSP_ROOT/frameworks/base/core/java/android/content/res/OplusBaseConfiguration.java"
EXTRA_CONF="$AOSP_ROOT/frameworks/base/core/java/oplus/content/res/OplusExtraConfiguration.java"
BUILD_BASE="$AOSP_ROOT/frameworks/base/core/java/com/oplus/os/OplusBuild.java"
BUILD_CONF="$AOSP_ROOT/frameworks/base/core/java/com/oplus/os/OplusBuild$1.java" # Inner classes sometimes exist

# Cleanup OplusTypeCastingHelper (Confirmed Conflict)
if [ -f "$TARGET_FILE" ]; then
    echo "[!] Found duplicate class at $TARGET_FILE"
    rm -v "$TARGET_FILE"
fi

# Cleanup OplusBaseConfiguration
if [ -f "$CONF_BASE" ]; then
    echo "[!] Found duplicate class at $CONF_BASE"
    rm -v "$CONF_BASE"
fi

# Cleanup OplusExtraConfiguration
if [ -f "$EXTRA_CONF" ]; then
    echo "[!] Found duplicate class at $EXTRA_CONF"
    rm -v "$EXTRA_CONF"
fi

# Cleanup OplusBuild (Optional, but safe if we are providing it)
if [ -f "$BUILD_BASE" ]; then
    echo "[!] Found duplicate class at $BUILD_BASE"
    rm -v "$BUILD_BASE"
fi

echo "[+] Framework patching complete."
