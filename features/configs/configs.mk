
ifeq ($(USE_8PRO_CORE),true)

PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/config:$(TARGET_COPY_OUT_ODM)/etc/camera/config \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/model:$(TARGET_COPY_OUT_ODM)/etc/camera/model \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/gesture:$(TARGET_COPY_OUT_ODM)/etc/camera/gesture \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/CameraHWConfiguration.config:$(TARGET_COPY_OUT_ODM)/etc/camera/CameraHWConfiguration.config \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/settings_fdc.txt:$(TARGET_COPY_OUT_ODM)/etc/camera/settings_fdc.txt \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/eis_camera.vcfg:$(TARGET_COPY_OUT_ODM)/etc/camera/eis_camera.vcfg \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/fwk_config.json:$(TARGET_COPY_OUT_ODM)/etc/camera/fwk_config.json \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/camera_unit_feature_config.protobuf:$(TARGET_COPY_OUT_ODM)/etc/camera/camera_unit_feature_config.protobuf \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/camera_unit_config:$(TARGET_COPY_OUT_ODM)/etc/camera/camera_unit_config \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/oplus_camera_config:$(TARGET_COPY_OUT_ODM)/etc/camera/oplus_camera_config \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/oplus_camera_aps_config:$(TARGET_COPY_OUT_ODM)/etc/camera/oplus_camera_aps_config \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/oplus_camera_algo_switch_config:$(TARGET_COPY_OUT_ODM)/etc/camera/oplus_camera_algo_switch_config \

endif
