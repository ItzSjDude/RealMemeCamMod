
ifeq ($(ENABLE_Darksight),true)

# Dynamic load for Darksight nested folder
FEAT_LOCAL_PATH_Darksight := vendor/realmeme_cam_mod/features/Darksight/system/odm/etc/camera/darksight
FEAT_FILES_Darksight := $(shell cd $(FEAT_LOCAL_PATH_Darksight) && find . -type f | sed 's|^\./||')

PRODUCT_COPY_FILES += \$(foreach f,\$(FEAT_FILES_Darksight),\$(FEAT_LOCAL_PATH_Darksight)/\$(f):$(TARGET_COPY_OUT_ODM)/etc/camera/darksight/\$(f))

# Static inclusions of .so
PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/features/Darksight/system/odm/lib64/libapsdarksight.so:$(TARGET_COPY_OUT_ODM)/lib64/libapsdarksight.so

endif
