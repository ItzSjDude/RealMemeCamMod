
ifeq ($(ENABLE_DoubleExposure),true)
# Copy directory contents
PRODUCT_COPY_FILES += $(foreach f,$(shell find vendor/realmeme_cam_mod/features/double_exposure/system/odm/etc/camera/doubleexposure -type f),$(f):$(subst vendor/realmeme_cam_mod/features/double_exposure/system/odm/,$(TARGET_COPY_OUT_ODM)/,$(f)))

PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/double_exposure/system/odm/lib64/libancbase_rt_doubleexposure.so:$(TARGET_COPY_OUT_ODM)/lib64/libancbase_rt_doubleexposure.so \
    vendor/realmeme_cam_mod/features/double_exposure/system/odm/lib64/libAncHumanDoubleExposure.so:$(TARGET_COPY_OUT_ODM)/lib64/libAncHumanDoubleExposure.so \
    vendor/realmeme_cam_mod/features/double_exposure/system/odm/lib/libancbase_rt_doubleexposure.so:$(TARGET_COPY_OUT_ODM)/lib/libancbase_rt_doubleexposure.so \
    vendor/realmeme_cam_mod/features/double_exposure/system/odm/lib/libAncHumanDoubleExposure.so:$(TARGET_COPY_OUT_ODM)/lib/libAncHumanDoubleExposure.so

endif
