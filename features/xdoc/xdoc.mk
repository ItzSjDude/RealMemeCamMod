
ifeq ($(ENABLE_XDoc),true)

PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/xdoc/system/odm/lib/libXDocProcessSDK.so:$(TARGET_COPY_OUT_ODM)/lib/libXDocProcessSDK.so \
    vendor/realmeme_cam_mod/features/xdoc/system/odm/lib/libYTCommon.so:$(TARGET_COPY_OUT_ODM)/lib/libYTCommon.so \
    vendor/realmeme_cam_mod/features/xdoc/system/odm/lib64/libXDocProcessSDK.so:$(TARGET_COPY_OUT_ODM)/lib64/libXDocProcessSDK.so \
    vendor/realmeme_cam_mod/features/xdoc/system/odm/lib64/libYTCommon.so:$(TARGET_COPY_OUT_ODM)/lib64/libYTCommon.so

endif
