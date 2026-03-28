ifeq ($(USE_8PRO_CORE),true)
PRODUCT_SOONG_NAMESPACES += vendor/realmeme_cam_mod/CoreSdk/8pro
PRODUCT_PACKAGES += com.oplus.camera.unit.sdk.adapter
else
PRODUCT_SOONG_NAMESPACES += vendor/realmeme_cam_mod/CoreSdk/7pro
endif

# Common module packaging for both
PRODUCT_PACKAGES += \
    com.oplus.camera.unit.sdk \
    com.oplus.camera.unit.sdk.xml
