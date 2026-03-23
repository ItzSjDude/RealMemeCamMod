
ifeq ($(ENABLE_PerfectColor),true)

# Dynamic load for PerfectColor nested folder
FEAT_LOCAL_PATH_PerfectColor := vendor/realmeme_cam_mod/features/PerfectColor/system/odm/etc/camera/pf
FEAT_FILES_PerfectColor := $(shell cd $(FEAT_LOCAL_PATH_PerfectColor) && find . -type f | sed 's|^\./||')

PRODUCT_COPY_FILES += \$(foreach f,\$(FEAT_FILES_PerfectColor),\$(FEAT_LOCAL_PATH_PerfectColor)/\$(f):\$(TARGET_COPY_OUT_ODM)/etc/camera/pf/\$(f))
# Static inclusions of .so
PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/PerfectColor/system/odm/lib64/libPerfectColor.so:\$(TARGET_COPY_OUT_ODM)/lib64/libPerfectColor.so

endif
