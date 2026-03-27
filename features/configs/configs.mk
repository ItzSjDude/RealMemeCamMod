
ifeq ($(USE_8PRO_CORE),true)

PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/CameraHWConfiguration.config:$(TARGET_COPY_OUT_ODM)/etc/camera/CameraHWConfiguration.config \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/settings_fdc.txt:$(TARGET_COPY_OUT_ODM)/etc/camera/settings_fdc.txt \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/eis_camera.vcfg:$(TARGET_COPY_OUT_ODM)/etc/camera/eis_camera.vcfg \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/fwk_config.json:$(TARGET_COPY_OUT_ODM)/etc/camera/fwk_config.json \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/camera_unit_feature_config.protobuf:$(TARGET_COPY_OUT_ODM)/etc/camera/config/camera_unit_feature_config.protobuf \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/camera_unit_config:$(TARGET_COPY_OUT_ODM)/etc/camera/config/camera_unit_config \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/oplus_camera_config:$(TARGET_COPY_OUT_ODM)/etc/camera/config/oplus_camera_config \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/oplus_camera_aps_config:$(TARGET_COPY_OUT_ODM)/etc/camera/config/oplus_camera_aps_config \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/Oplus_QC_LTM_Commercial_SM8250_2020_01_15.pfm:$(TARGET_COPY_OUT_ODM)/etc/camera/Oplus_QC_LTM_Commercial_SM8250_2020_01_15.pfm \
    vendor/realmeme_cam_mod/features/configs/system/vendor/etc/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt \
    vendor/realmeme_cam_mod/CoreAps/8pro/libs/lib/libHeifEncoderWrapper.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libHeifEncoderWrapper.so \
    vendor/realmeme_cam_mod/CoreAps/8pro/libs/lib64/libHeifEncoderWrapper.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libHeifEncoderWrapper.so \
    vendor/realmeme_cam_mod/CoreAps/8pro/libs/lib/libNativeWinBuffExchange.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libNativeWinBuffExchange.so \
    vendor/realmeme_cam_mod/CoreAps/8pro/libs/lib64/libNativeWinBuffExchange.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libNativeWinBuffExchange.so \
    vendor/realmeme_cam_mod/CoreAps/8pro/libs/lib/liboplusheifwriter.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/liboplusheifwriter.so \
    vendor/realmeme_cam_mod/CoreAps/8pro/libs/lib64/liboplusheifwriter.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/liboplusheifwriter.so \
    vendor/realmeme_cam_mod/CoreAps/8pro/libs/lib/libHeifWinBufExchg-jni.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libHeifWinBufExchg-jni.so \
    vendor/realmeme_cam_mod/CoreAps/8pro/libs/lib64/libHeifWinBufExchg-jni.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libHeifWinBufExchg-jni.so \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/oplus_camera_algo_switch_config:$(TARGET_COPY_OUT_ODM)/etc/camera/config/oplus_camera_algo_switch_config \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/config/gc02m1_20711:$(TARGET_COPY_OUT_ODM)/etc/camera/config/gc02m1_20711 \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/config/gc02m1b_20711:$(TARGET_COPY_OUT_ODM)/etc/camera/config/gc02m1b_20711 \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/config/hi846_20711:$(TARGET_COPY_OUT_ODM)/etc/camera/config/hi846_20711 \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/config/imx471_20711:$(TARGET_COPY_OUT_ODM)/etc/camera/config/imx471_20711 \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/config/projectname:$(TARGET_COPY_OUT_ODM)/etc/camera/config/projectname \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/config/s5khm2s_20711:$(TARGET_COPY_OUT_ODM)/etc/camera/config/s5khm2s_20711 \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/config/video_beauty_default_config:$(TARGET_COPY_OUT_ODM)/etc/camera/config/video_beauty_default_config \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/model/DocDetectV15.xbin:$(TARGET_COPY_OUT_ODM)/etc/camera/model/DocDetectV15.xbin \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/model/license.lic:$(TARGET_COPY_OUT_ODM)/etc/camera/model/license.lic \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/gesture/tt_hand_box_reg_v12.0.model:$(TARGET_COPY_OUT_ODM)/etc/camera/gesture/tt_hand_box_reg_v12.0.model \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/gesture/tt_hand_det_v11.0.model:$(TARGET_COPY_OUT_ODM)/etc/camera/gesture/tt_hand_det_v11.0.model \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/gesture/tt_hand_gesture_v11.1.model:$(TARGET_COPY_OUT_ODM)/etc/camera/gesture/tt_hand_gesture_v11.1.model \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/gesture/tt_hand_kp_v6.0.model:$(TARGET_COPY_OUT_ODM)/etc/camera/gesture/tt_hand_kp_v6.0.model \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/gesture/tt_hand_lr_v3.0.model:$(TARGET_COPY_OUT_ODM)/etc/camera/gesture/tt_hand_lr_v3.0.model \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/gesture/modules/tt_hand_box_reg_v12.0.model:$(TARGET_COPY_OUT_ODM)/etc/camera/gesture/modules/tt_hand_box_reg_v12.0.model \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/gesture/modules/tt_hand_det_v11.0.model:$(TARGET_COPY_OUT_ODM)/etc/camera/gesture/modules/tt_hand_det_v11.0.model \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/gesture/modules/tt_hand_gesture_v11.1.model:$(TARGET_COPY_OUT_ODM)/etc/camera/gesture/modules/tt_hand_gesture_v11.1.model \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/gesture/modules/tt_hand_kp_v6.0.model:$(TARGET_COPY_OUT_ODM)/etc/camera/gesture/modules/tt_hand_kp_v6.0.model \
    vendor/realmeme_cam_mod/features/configs/system/odm/etc/camera/gesture/modules/tt_hand_lr_v3.0.model:$(TARGET_COPY_OUT_ODM)/etc/camera/gesture/modules/tt_hand_lr_v3.0.model

endif
