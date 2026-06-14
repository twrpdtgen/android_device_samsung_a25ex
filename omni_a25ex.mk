#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a25ex device
$(call inherit-product, device/samsung/a25ex/device.mk)

PRODUCT_DEVICE := a25ex
PRODUCT_NAME := omni_a25ex
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A253Z
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a25exsbm-user 13 TP1A.220624.014 A253ZSCU1CZEG release-keys"

BUILD_FINGERPRINT := samsung/a25exsbm/a25ex:13/TP1A.220624.014/A253ZSCU1CZEG:user/release-keys
