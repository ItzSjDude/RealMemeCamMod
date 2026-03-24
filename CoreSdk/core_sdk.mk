ifeq ($(USE_8PRO_CORE),true)
PRODUCT_SOONG_NAMESPACES += vendor/realmeme_cam_mod/CoreSdk/8pro
PRODUCT_PACKAGES += com.oplus.camera.unit.sdk.adapter
PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/CoreSdk/8pro/com.oplus.camera.unit.sdk.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.oplus.camera.unit.sdk.xml
else
PRODUCT_SOONG_NAMESPACES += vendor/realmeme_cam_mod/CoreSdk/7pro
PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/CoreSdk/7pro/com.oplus.camera.unit.sdk.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.oplus.camera.unit.sdk.xml
endif

# Common module packaging for both
PRODUCT_PACKAGES += com.oplus.camera.unit.sdk
