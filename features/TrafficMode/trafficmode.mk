# --- Feature Toggle ---
ENABLE_TrafficMode := true

ifeq ($(ENABLE_TrafficMode),true)

PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/TrafficMode/system/odm/lib/libTrafficMode.so:$(TARGET_COPY_OUT_ODM)/lib/libTrafficMode.so \
    vendor/realmeme_cam_mod/features/TrafficMode/system/odm/lib64/libTrafficMode.so:$(TARGET_COPY_OUT_ODM)/lib64/libTrafficMode.so \

endif
