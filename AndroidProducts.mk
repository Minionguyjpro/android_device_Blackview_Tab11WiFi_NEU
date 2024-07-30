#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/lineage_Tab11WiFi_NEU.mk \
    $(LOCAL_DIR)/twrp_Tab11WiFi_NEU.mk

COMMON_LUNCH_CHOICES := \
    lineage_Tab11WiFi_NEU-user \
    lineage_Tab11WiFi_NEU-userdebug \
    lineage_Tab11WiFi_NEU-eng \
    twrp_Tab11WiFi_NEU-eng \