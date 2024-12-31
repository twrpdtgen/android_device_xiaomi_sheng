#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
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
PRODUCT_MODEL := 24018RPAC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_sheng-eng 99.87.36 SP2A.220405.004 eng.map220.20241222.113921 test-keys"

BUILD_FINGERPRINT := Xiaomi/twrp_sheng/sheng:99.87.36/SP2A.220405.004/map220v12221138:eng/test-keys
