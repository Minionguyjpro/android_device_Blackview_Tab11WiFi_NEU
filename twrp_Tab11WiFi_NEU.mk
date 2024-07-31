#
# Copyright 2024 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
DEVICE_PATH := device/Blackview/Tab11WiFi_NEU

# Release name
PRODUCT_RELEASE_NAME := Tab11WiFi_NEU

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs GSI keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit from device
$(call inherit-product, $(DEVICE_PATH)/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)
PRODUCT_MODEL := Tab 11 WiFi
PRODUCT_BRAND := Blackview
PRODUCT_MANUFACTURER := incar

PRODUCT_GMS_CLIENTID_BASE := android-incar

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Tab11WiFi_NEU \
    PRODUCT_NAME=Tab11WiFi_NEU \
    PRIVATE_BUILD_DESC="full_tb8788p1_64_bsp_k419-user 12 Tab11WiFi_NEU 20230801.1751 release-keys"

BUILD_FINGERPRINT := Blackview/Tab11WiFi_NEU/Tab11WiFi_NEU:12/Tab11WiFi_NEU/20230801.1751:user/release-keys
