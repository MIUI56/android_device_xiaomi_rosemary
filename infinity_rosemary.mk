#
# Copyright (C) 2022 The infinityOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/rosemary/device.mk)

# Inherit some common infinityOS stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

PRODUCT_NAME := infinity_rosemary
PRODUCT_DEVICE := rosemary
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2101K7BNY

# Infinity-X Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_BLUR := true
INFINITY_MAINTAINER := "Aj0195"
USE_MOTO_CALCULATOR := true
WITH_GAPPS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SHIPS_GOOGLE_DIALER := true
TARGET_DISABLE_EPPE := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="rosemary-user 12 SP1A.210812.016 V14.0.7.0.TKLMIXM release-keys"

BUILD_FINGERPRINT := "Redmi/rosemary_global/rosemary:12/SP1A.210812.016/V14.0.7.0.TKLMIXM:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
    

