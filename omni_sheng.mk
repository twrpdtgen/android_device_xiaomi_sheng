#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from sheng device
$(call inherit-product, device/xiaomi/sheng/device.mk)

PRODUCT_DEVICE := sheng
PRODUCT_NAME := omni_sheng
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 24018RPACG
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sheng_global-user 13 TKQ1.221114.001 OS2.0.6.0.VNXMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/sheng_global/sheng:13/TKQ1.221114.001/OS2.0.6.0.VNXMIXM:user/release-keys
