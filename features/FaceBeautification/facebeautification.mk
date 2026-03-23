
ifeq ($(ENABLE_FaceBeautification),true)

# Dynamic load for FaceBeautification nested folder
FEAT_LOCAL_PATH_FaceBeautification := vendor/realmeme_cam_mod/features/FaceBeautification/system/odm/etc/camera/fb_model
FEAT_FILES_FaceBeautification := $(shell cd $(FEAT_LOCAL_PATH_FaceBeautification) && find . -type f | sed 's|^\./||')

PRODUCT_COPY_FILES += \$(foreach f,\$(FEAT_FILES_FaceBeautification),\$(FEAT_LOCAL_PATH_FaceBeautification)/\$(f):\$(TARGET_COPY_OUT_ODM)/etc/camera/fb_model/\$(f))
# Static inclusions of .so
PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/FaceBeautification/system/odm/lib64/libFaceBeautyPICap.so:\$(TARGET_COPY_OUT_ODM)/lib64/libFaceBeautyPICap.so \
    vendor/realmeme_cam_mod/features/FaceBeautification/system/odm/lib64/libFaceBeautyPre.so:\$(TARGET_COPY_OUT_ODM)/lib64/libFaceBeautyPre.so \
    vendor/realmeme_cam_mod/features/FaceBeautification/system/odm/lib/libFaceBeautyCap.so:\$(TARGET_COPY_OUT_ODM)/lib/libFaceBeautyCap.so \
    vendor/realmeme_cam_mod/features/FaceBeautification/system/odm/lib/libFaceBeautyPre.so:\$(TARGET_COPY_OUT_ODM)/lib/libFaceBeautyPre.so \
    vendor/realmeme_cam_mod/features/FaceBeautification/system/odm/lib/rfsa/adsp/libhvxFaceBeautyPre_skel.so:\$(TARGET_COPY_OUT_ODM)/lib/rfsa/adsp/libhvxFaceBeautyPre_skel.so

endif
