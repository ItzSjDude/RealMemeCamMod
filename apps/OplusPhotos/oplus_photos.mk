# Oplus Photos feature integration

ifeq ($(ENABLE_COLOROS_16_PHOTOS),true)
PRODUCT_PACKAGES += \
    OplusPhotos \
    AIUnit \
    AIMemory \
    libaiunit_framework \
    libaiunit_framework_jni \
    libdmabufheap_oplus \
    libtensorflowlite \
    libopencv_java4 \
    OpenCapabilityService
endif
