
ifeq ($(ENABLE_SuperNightscape),true)

PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/SuperNightscape/system/odm/lib64/libarcsoft_super_night_raw.so:$(TARGET_COPY_OUT_ODM)/lib64/libarcsoft_super_night_raw.so \
    vendor/realmeme_cam_mod/features/SuperNightscape/system/odm/lib64/libarcsoft_portrait_super_night_raw.so:$(TARGET_COPY_OUT_ODM)/lib64/libarcsoft_portrait_super_night_raw.so

endif
