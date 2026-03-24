
ifeq ($(ENABLE_WaterMode),true)

PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/water_mode/system/odm/lib/libWaterMode.so:$(TARGET_COPY_OUT_ODM)/lib/libWaterMode.so \
    vendor/realmeme_cam_mod/features/water_mode/system/odm/lib64/libWaterMode.so:$(TARGET_COPY_OUT_ODM)/lib64/libWaterMode.so

endif
