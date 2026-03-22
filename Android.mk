# Realmeme Camera Mod - Android.mk MakeFile
LOCAL_PATH := \$(call my-dir)

include \$(CLEAR_VARS)
LOCAL_MODULE := libAlgoInterface
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := odm/lib64/libAlgoInterface.so
LOCAL_MULTILIB := 64
LOCAL_CHECK_ELF_FILES := false
include \$(BUILD_PREBUILT)
