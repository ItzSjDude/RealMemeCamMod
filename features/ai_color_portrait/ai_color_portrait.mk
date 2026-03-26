
ifeq ($(ENABLE_AI_COLOR_PORTRAIT),true)

# 1. Configurations
PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/ai_color_portrait/system/odm/etc/camera/gasryuv_1.2_wp.model:$(TARGET_COPY_OUT_ODM)/etc/camera/gasryuv_1.2_wp.model \
    vendor/realmeme_cam_mod/features/ai_color_portrait/system/odm/etc/camera/aicolor/duallut_portrait.bmp:$(TARGET_COPY_OUT_ODM)/etc/camera/aicolor/duallut_portrait.bmp \
    vendor/realmeme_cam_mod/features/ai_color_portrait/system/odm/etc/camera/aicolor/duallut_background.bmp:$(TARGET_COPY_OUT_ODM)/etc/camera/aicolor/duallut_background.bmp

# 2. Libraries (.so)
PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/ai_color_portrait/system/odm/lib64/libarcsoft_aicolor_image.so:$(TARGET_COPY_OUT_ODM)/lib64/libarcsoft_aicolor_image.so \
    vendor/realmeme_cam_mod/features/ai_color_portrait/system/odm/lib64/libarcsoft_aicolor_video.so:$(TARGET_COPY_OUT_ODM)/lib64/libarcsoft_aicolor_video.so

endif
