# --- Feature Toggle ---
ENABLE_Stickers := true

ifeq ($(ENABLE_Stickers),true)

# Dynamic load for Stickers nested folder
FEAT_LOCAL_PATH_Stickers := vendor/realmeme_cam_mod/features/Stickers/system/odm/etc/camera/sticker
FEAT_FILES_Stickers := $(shell cd $(FEAT_LOCAL_PATH_Stickers) && find . -type f | sed 's|^\./||')

PRODUCT_COPY_FILES += \$(foreach f,\$(FEAT_FILES_Stickers),\$(FEAT_LOCAL_PATH_Stickers)/\$(f):\$(TARGET_COPY_OUT_ODM)/etc/camera/sticker/\$(f))

endif
