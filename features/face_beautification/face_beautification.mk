PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/face_beautification/system/odm/etc/camera/fb_default:$(TARGET_COPY_OUT_ODM)/etc/camera/fb_default

# Copy directory contents
PRODUCT_COPY_FILES += $(foreach f,$(shell find vendor/realmeme_cam_mod/features/face_beautification/system/odm/etc/camera/fb_model -type f),$(f):$(subst vendor/realmeme_cam_mod/features/face_beautification/system/odm/,$(TARGET_COPY_OUT_ODM)/,$(f)))

ifeq ($(ENABLE_FaceBeautification),true)
PRODUCT_COPY_FILES += $(foreach f,$(shell find vendor/realmeme_cam_mod/features/face_beautification/system/odm/etc/camera/megvii -type f),$(f):$(subst vendor/realmeme_cam_mod/features/face_beautification/system/odm/,$(TARGET_COPY_OUT_ODM)/,$(f)))
endif
