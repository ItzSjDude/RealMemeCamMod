
ifeq ($(ENABLE_TrafficMode),true)

PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/traffic_mode/system/odm/lib/libTrafficMode.so:$(TARGET_COPY_OUT_ODM)/lib/libTrafficMode.so \
    vendor/realmeme_cam_mod/features/traffic_mode/system/odm/lib64/libTrafficMode.so:$(TARGET_COPY_OUT_ODM)/lib64/libTrafficMode.so

endif
