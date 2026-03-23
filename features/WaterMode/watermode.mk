# --- Feature Toggle ---
ENABLE_WaterMode := true

ifeq ($(ENABLE_WaterMode),true)

PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/WaterMode/system/odm/lib/libWaterMode.so:$(TARGET_COPY_OUT_ODM)/lib/libWaterMode.so \
    vendor/realmeme_cam_mod/features/WaterMode/system/odm/lib64/libWaterMode.so:$(TARGET_COPY_OUT_ODM)/lib64/libWaterMode.so \

endif
