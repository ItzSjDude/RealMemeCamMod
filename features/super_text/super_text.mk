
ifeq ($(ENABLE_SuperText),true)

PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/super_text/system/odm/lib/libSuperTextWrapper.so:$(TARGET_COPY_OUT_ODM)/lib/libSuperTextWrapper.so \
    vendor/realmeme_cam_mod/features/super_text/system/odm/lib64/libSuperTextWrapper.so:$(TARGET_COPY_OUT_ODM)/lib64/libSuperTextWrapper.so

endif
