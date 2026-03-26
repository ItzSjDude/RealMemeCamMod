ifeq ($(USE_8PRO_CORE),true)
PRODUCT_SOONG_NAMESPACES += vendor/realmeme_cam_mod/CoreAps/8pro
PRODUCT_PACKAGES += \
    libAPSClient-jni.qti \
    libAPSClient-cmd-jni.qti
endif
