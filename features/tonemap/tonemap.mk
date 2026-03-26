# Copy directory contents
PRODUCT_COPY_FILES += $(foreach f,$(shell find vendor/realmeme_cam_mod/features/tonemap/system/odm/etc/camera/tonemap -type f),$(f):$(subst vendor/realmeme_cam_mod/features/tonemap/system/odm/,$(TARGET_COPY_OUT_ODM)/,$(f)))
