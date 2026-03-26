# Copy directory contents
PRODUCT_COPY_FILES += $(foreach f,$(shell find vendor/realmeme_cam_mod/features/perfect_color/system/odm/etc/camera/filters_lut -type f),$(f):$(subst vendor/realmeme_cam_mod/features/perfect_color/system/odm/,$(TARGET_COPY_OUT_ODM)/,$(f)))
PRODUCT_COPY_FILES += $(foreach f,$(shell find vendor/realmeme_cam_mod/features/perfect_color/system/odm/etc/camera/filters_res -type f),$(f):$(subst vendor/realmeme_cam_mod/features/perfect_color/system/odm/,$(TARGET_COPY_OUT_ODM)/,$(f)))
