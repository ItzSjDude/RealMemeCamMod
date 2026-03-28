# Perfect Color Feature - Copy all files to ODM partition
PRODUCT_COPY_FILES += $(foreach f,$(shell find vendor/realmeme_cam_mod/features/perfect_color/system/odm -type f),$(f):$(subst vendor/realmeme_cam_mod/features/perfect_color/system/odm/,$(TARGET_COPY_OUT_ODM)/,$(f)))
