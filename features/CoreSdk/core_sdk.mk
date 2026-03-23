ifeq ($(USE_8PRO_CORE),true)
PRODUCT_PACKAGES += com.oplus.camera.unit.sdk_8pro com.oplus.camera.unit.sdk.adapter_8pro
else
PRODUCT_PACKAGES += com.oplus.camera.unit.sdk
endif
