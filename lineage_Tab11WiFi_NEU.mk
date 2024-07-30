#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Tab11WiFi_NEU device
$(call inherit-product, device/incar/Tab11WiFi_NEU/device.mk)

PRODUCT_DEVICE := Tab11WiFi_NEU
PRODUCT_NAME := lineage_Tab11WiFi_NEU
PRODUCT_BRAND := Blackview
PRODUCT_MODEL := Tab 11 WiFi
PRODUCT_MANUFACTURER := incar

PRODUCT_GMS_CLIENTID_BASE := android-incar

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_tb8788p1_64_bsp_k419-user 12 Tab11WiFi_NEU 20230801.1751 release-keys"

BUILD_FINGERPRINT := Blackview/Tab11WiFi_NEU/Tab11WiFi_NEU:12/Tab11WiFi_NEU/20230801.1751:user/release-keys
