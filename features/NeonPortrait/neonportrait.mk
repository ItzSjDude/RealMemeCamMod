# --- Feature Toggle ---
ENABLE_NeonPortrait := true

ifeq ($(ENABLE_NeonPortrait),true)

PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/NeonPortrait/system/odm/lib64/libarcsoft_low_light_hdr_for_neon.so:$(TARGET_COPY_OUT_ODM)/lib64/libarcsoft_low_light_hdr_for_neon.so \

endif
