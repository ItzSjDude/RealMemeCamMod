ifeq ($(USE_8PRO_CORE),true)
PRODUCT_PACKAGES += com.oplus.camera.unit.sdk_8pro com.oplus.camera.unit.sdk.adapter_8pro
PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/CoreSdk/8pro/com.oplus.camera.unit.sdk.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.oplus.camera.unit.sdk.xml
else
PRODUCT_PACKAGES += com.oplus.camera.unit.sdk
PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/CoreSdk/7pro/com.oplus.camera.unit.sdk.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.oplus.camera.unit.sdk.xml
endif
