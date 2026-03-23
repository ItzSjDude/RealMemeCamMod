
ifeq ($(ENABLE_DynamicBokeh),true)

PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/DynamicBokeh/system/odm/etc/camera/anc/videolut_background.png:$(TARGET_COPY_OUT_ODM)/etc/camera/anc/videolut_background.png \
    vendor/realmeme_cam_mod/features/DynamicBokeh/system/odm/etc/camera/anc/video_retention_model_post:$(TARGET_COPY_OUT_ODM)/etc/camera/anc/video_retention_model_post \
    vendor/realmeme_cam_mod/features/DynamicBokeh/system/odm/etc/camera/anc/videolut_portrait.png:$(TARGET_COPY_OUT_ODM)/etc/camera/anc/videolut_portrait.png \
    vendor/realmeme_cam_mod/features/DynamicBokeh/system/odm/etc/camera/anc/video_retention_model:$(TARGET_COPY_OUT_ODM)/etc/camera/anc/video_retention_model \
    vendor/realmeme_cam_mod/features/DynamicBokeh/system/odm/etc/camera/anc/videolut_portrait_front.png:$(TARGET_COPY_OUT_ODM)/etc/camera/anc/videolut_portrait_front.png \
    vendor/realmeme_cam_mod/features/DynamicBokeh/system/odm/etc/camera/anc/merged_model:$(TARGET_COPY_OUT_ODM)/etc/camera/anc/merged_model \
    vendor/realmeme_cam_mod/features/DynamicBokeh/system/odm/etc/camera/anc/merged_model_post:$(TARGET_COPY_OUT_ODM)/etc/camera/anc/merged_model_post \
    vendor/realmeme_cam_mod/features/DynamicBokeh/system/odm/etc/camera/singleblur/license_release.license:$(TARGET_COPY_OUT_ODM)/etc/camera/singleblur/license_release.license \
    vendor/realmeme_cam_mod/features/DynamicBokeh/system/odm/etc/camera/ancsegbase/model.data:$(TARGET_COPY_OUT_ODM)/etc/camera/ancsegbase/model.data \
    vendor/realmeme_cam_mod/features/DynamicBokeh/system/odm/etc/camera/ancsegbase/anc_cl_kernel.cache:$(TARGET_COPY_OUT_ODM)/etc/camera/ancsegbase/anc_cl_kernel.cache \
    vendor/realmeme_cam_mod/features/DynamicBokeh/system/odm/lib64/libAncHumBokehPost.so:$(TARGET_COPY_OUT_ODM)/lib64/libAncHumBokehPost.so \
    vendor/realmeme_cam_mod/features/DynamicBokeh/system/odm/lib64/libAncHumBokeh.so:$(TARGET_COPY_OUT_ODM)/lib64/libAncHumBokeh.so \
    vendor/realmeme_cam_mod/features/DynamicBokeh/system/odm/lib64/libCaptureBokeh.so:$(TARGET_COPY_OUT_ODM)/lib64/libCaptureBokeh.so \
    vendor/realmeme_cam_mod/features/DynamicBokeh/system/odm/lib64/libarcsoft_scbokeh_video.so:$(TARGET_COPY_OUT_ODM)/lib64/libarcsoft_scbokeh_video.so \
    vendor/realmeme_cam_mod/features/DynamicBokeh/system/odm/lib64/libarcsoft_dualcam_bokeh_api.so:$(TARGET_COPY_OUT_ODM)/lib64/libarcsoft_dualcam_bokeh_api.so \
    vendor/realmeme_cam_mod/features/DynamicBokeh/system/odm/lib64/libarcsoft_scbokeh_image.so:$(TARGET_COPY_OUT_ODM)/lib64/libarcsoft_scbokeh_image.so \
    vendor/realmeme_cam_mod/features/DynamicBokeh/system/my_product/lib64/libsingle_camera_bokeh_native.so:$(TARGET_COPY_OUT_PRODUCT)/lib64/libsingle_camera_bokeh_native.so

endif
