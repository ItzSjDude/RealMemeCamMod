# Copy directory contents
PRODUCT_COPY_FILES += $(foreach f,$(shell find vendor/realmeme_cam_mod/features/stickers/system/odm/etc/camera/sticker -type f),$(f):$(subst vendor/realmeme_cam_mod/features/stickers/system/odm/,$(TARGET_COPY_OUT_ODM)/,$(f)))
