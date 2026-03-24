
ifeq ($(ENABLE_NeonPortrait),true)

PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/neon_portrait/system/odm/lib64/libarcsoft_low_light_hdr_for_neon.so:$(TARGET_COPY_OUT_ODM)/lib64/libarcsoft_low_light_hdr_for_neon.so

endif
