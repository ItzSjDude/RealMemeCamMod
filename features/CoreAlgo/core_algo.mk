
ifeq ($(USE_8PRO_CORE),true)
CORE_PATH := features/CoreAlgo/8pro/system
else
CORE_PATH := features/CoreAlgo/7pro/system
endif

PRODUCT_COPY_FILES += \
    vendor/realmeme_cam_mod/$(CORE_PATH)/odm/lib64/libAlgoProcess.so:$(TARGET_COPY_OUT_ODM)/lib64/libAlgoProcess.so \
    vendor/realmeme_cam_mod/$(CORE_PATH)/odm/lib64/libAlgoInterface.so:$(TARGET_COPY_OUT_ODM)/lib64/libAlgoInterface.so \
    vendor/realmeme_cam_mod/$(CORE_PATH)/odm/lib/libAlgoProcess.so:$(TARGET_COPY_OUT_ODM)/lib/libAlgoProcess.so \
    vendor/realmeme_cam_mod/$(CORE_PATH)/odm/lib/libAlgoInterface.so:$(TARGET_COPY_OUT_ODM)/lib/libAlgoInterface.so
