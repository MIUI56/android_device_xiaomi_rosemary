#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/rosemary/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_DISABLE_EPPE := true



PRODUCT_NAME := lineage_rosemary
PRODUCT_DEVICE := rosemary
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2101K7BNY

PRODUCT_SYSTEM_NAME := rosemary_global
PRODUCT_SYSTEM_DEVICE := rosemary

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi


# MistOS Stuffs
MISTOS_MAINTAINER := AJ
TARGET_ENABLE_BLUR := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false
WITH_GMS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := false
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="rosemary-user 12 SP1A.210812.016 V14.0.16.0.TFFMIXM release-keys" \
    BuildFingerprint=Redmi/rosemary_global/rosemary:12/SP1A.210812.016/V14.0.16.0.TFFMIXM:user/release-keys \
    SystemModel=$(PRODUCT_SYSTEM_DEVICE) \
    SystemName=$(PRODUCT_SYSTEM_NAME) \
    ProductModel=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)
