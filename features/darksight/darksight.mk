# Copy directory contents
PRODUCT_COPY_FILES += $(foreach f,$(shell find vendor/realmeme_cam_mod/features/darksight/system/odm/etc/camera/darksight -type f),$(f):$(subst vendor/realmeme_cam_mod/features/darksight/system/odm/,$(TARGET_COPY_OUT_ODM)/,$(f)))
