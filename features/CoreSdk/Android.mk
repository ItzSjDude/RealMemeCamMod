LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := com.oplus.camera.unit.sdk
LOCAL_MODULE_TAGS := optional

ifeq ($(USE_8PRO_CORE),true)
LOCAL_SRC_FILES := $(call all-java-files-under, 8pro/com.oplus.camera.unit.sdk/sources)
else
LOCAL_SRC_FILES := $(call all-java-files-under, 7pro/com.oplus.camera.unit.sdk)
endif

LOCAL_JAVA_LIBRARIES := framework oplus-framework
LOCAL_PRODUCT_MODULE := true
include $(BUILD_JAVA_LIBRARY)

# Adapter declaration only for 8pro
ifeq ($(USE_8PRO_CORE),true)
include $(CLEAR_VARS)
LOCAL_MODULE := com.oplus.camera.unit.sdk.adapter
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(call all-java-files-under, 8pro/com.oplus.camera.unit.sdk.adapter/sources)
LOCAL_JAVA_LIBRARIES := framework oplus-framework com.oplus.camera.unit.sdk
LOCAL_PRODUCT_MODULE := true
include $(BUILD_JAVA_LIBRARY)
endif
