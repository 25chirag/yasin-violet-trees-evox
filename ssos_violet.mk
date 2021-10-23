#
# Copyright (C) 2018-2020 The LineageOS Project
# Copyright (C) 2021 The EvolutionX Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common EvolutionX stuff.
$(call inherit-product, vendor/ssos/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
SSOS_BUILD_TYPE := OFFICIAL

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := ssos_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/coral/coral:11/RQ3A.7641976.001/7641976:user/release-keys"


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="coral-user 11 RQ3A.7641976.001 7641976 release-keys" \
    PRODUCT_NAME="violet"
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/coral/coral:11/RQ3A.7641976.001/7641976:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
