$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
#
# Overrides
PRODUCT_NAME := msm7627_ffa
PRODUCT_DEVICE := msm7627_ffa

PRODUCT_PACKAGES := \
    IM \
    VoiceDialer \
    SdkSetup

#Enabling Ring Tones
include frameworks/base/data/sounds/OriginalAudio.mk
