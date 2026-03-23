
ifeq ($(ENABLE_StarryMode),true)

PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/StarryMode/system/odm/lib64/libStarMode.so:$(TARGET_COPY_OUT_ODM)/lib64/libStarMode.so

endif
