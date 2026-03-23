# --- Feature Toggle ---
ENABLE_Tonemap := true

ifeq ($(ENABLE_Tonemap),true)

# Dynamic load for Tonemap nested folder
FEAT_LOCAL_PATH_Tonemap := vendor/realmeme_cam_mod/features/Tonemap/system/odm/etc/camera/tonemap
FEAT_FILES_Tonemap := $(shell cd $(FEAT_LOCAL_PATH_Tonemap) && find . -type f | sed 's|^\./||')

PRODUCT_COPY_FILES += \$(foreach f,\$(FEAT_FILES_Tonemap),\$(FEAT_LOCAL_PATH_Tonemap)/\$(f):\$(TARGET_COPY_OUT_ODM)/etc/camera/tonemap/\$(f))

# Static inclusions of .so
PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/Tonemap/system/odm/lib64/libCOppLceTonemapAPI.so:\$(TARGET_COPY_OUT_ODM)/lib64/libCOppLceTonemapAPI.so \
    vendor/realmeme_cam_mod/features/Tonemap/system/odm/lib/libCOppLceTonemapAPI.so:\$(TARGET_COPY_OUT_ODM)/lib/libCOppLceTonemapAPI.so

endif
