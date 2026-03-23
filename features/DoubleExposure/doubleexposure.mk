
ifeq ($(ENABLE_DoubleExposure),true)

PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/DoubleExposure/system/odm/lib64/libancbase_rt_doubleexposure.so:$(TARGET_COPY_OUT_ODM)/lib64/libancbase_rt_doubleexposure.so \
    vendor/realmeme_cam_mod/features/DoubleExposure/system/odm/lib64/libAncHumanDoubleExposure.so:$(TARGET_COPY_OUT_ODM)/lib64/libAncHumanDoubleExposure.so \
    vendor/realmeme_cam_mod/features/DoubleExposure/system/odm/lib/libancbase_rt_doubleexposure.so:$(TARGET_COPY_OUT_ODM)/lib/libancbase_rt_doubleexposure.so \
    vendor/realmeme_cam_mod/features/DoubleExposure/system/odm/lib/libAncHumanDoubleExposure.so:$(TARGET_COPY_OUT_ODM)/lib/libAncHumanDoubleExposure.so

endif
