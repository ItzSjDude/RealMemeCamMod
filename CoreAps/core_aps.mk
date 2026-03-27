ifeq ($(USE_8PRO_CORE),true)
PRODUCT_SOONG_NAMESPACES += vendor/realmeme_cam_mod/CoreAps/8pro
PRODUCT_PACKAGES += \
    libAPSClient-jni \
    libAPSClient-cmd-jni \
    libHeifEncoderWrapper \
    libHeifWinBufExchg-jni \
    libNativeWinBuffExchange \
    liboplusheifwriter
endif
