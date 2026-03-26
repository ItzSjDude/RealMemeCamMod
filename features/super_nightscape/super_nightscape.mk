ifeq ($(ENABLE_SuperNightscape),true)

PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/super_nightscape/system/odm/etc/camera/arc_golden_front.bin:$(TARGET_COPY_OUT_ODM)/etc/camera/arc_golden_front.bin \
    vendor/realmeme_cam_mod/features/super_nightscape/system/odm/etc/camera/arc_golden.bin:$(TARGET_COPY_OUT_ODM)/etc/camera/arc_golden.bin \
    vendor/realmeme_cam_mod/features/super_nightscape/system/odm/lib64/libarcsoft_super_night_raw.so:$(TARGET_COPY_OUT_ODM)/lib64/libarcsoft_super_night_raw.so \
    vendor/realmeme_cam_mod/features/super_nightscape/system/odm/lib64/libarcsoft_portrait_super_night_raw.so:$(TARGET_COPY_OUT_ODM)/lib64/libarcsoft_portrait_super_night_raw.so

# Copy directory contents
PRODUCT_COPY_FILES += $(foreach f,$(shell find vendor/realmeme_cam_mod/features/super_nightscape/system/odm/etc/camera/ashdr -type f),$(f):$(subst vendor/realmeme_cam_mod/features/super_nightscape/system/odm/,$(TARGET_COPY_OUT_ODM)/,$(f)))

endif
