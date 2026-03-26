
PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/face_beautification/system/odm/etc/camera/fb_default:$(TARGET_COPY_OUT_ODM)/etc/camera/fb_default \
    vendor/realmeme_cam_mod/features/face_beautification/system/odm/etc/camera/fb_model:$(TARGET_COPY_OUT_ODM)/etc/camera/fb_model \

ifeq ($(ENABLE_FaceBeautification),true)
PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/face_beautification/system/odm/etc/camera/megvii:$(TARGET_COPY_OUT_ODM)/etc/camera/megvii \
endif
