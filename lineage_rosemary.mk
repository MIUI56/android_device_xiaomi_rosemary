#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/rosemary/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_rosemary
PRODUCT_DEVICE := rosemary
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2101K7BNY

# Axion Stuff
AXION_CAMERA_REAR_INFO := 64,8,2,2
AXION_CAMERA_FRONT_INFO := 13
AXION_MAINTAINER := Aj0195
AXION_PROCESSOR := MTK_Helio_G95

# Axion CPU Flags
AXION_CPU_SMALL_CORES := 0,1,2,3,4,5
AXION_CPU_BIG_CORES := 6,7
TARGET_ENABLE_BLUR := true
TARGET_INCLUDES_LOS_PREBUILTS := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="rosemary-user 12 SP1A.210812.016 V14.0.7.0.TKLMIXM release-keys"

BUILD_FINGERPRINT := "Redmi/rosemary_global/rosemary:12/SP1A.210812.016/V14.0.7.0.TKLMIXM:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
    

