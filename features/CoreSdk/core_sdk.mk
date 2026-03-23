PRODUCT_PACKAGES += com.oplus.camera.unit.sdk

ifeq ($(USE_8PRO_CORE),true)
PRODUCT_PACKAGES += com.oplus.camera.unit.sdk.adapter
endif
