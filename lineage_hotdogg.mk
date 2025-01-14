#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdogg device
$(call inherit-product, device/oneplus/hotdogg/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_hotdogg
PRODUCT_DEVICE := hotdogg
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := HD1925
PRODUCT_BRAND := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7TProNR
PRODUCT_SYSTEM_DEVICE := OnePlus7TProNR

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus7TProNR-user 11 RKQ1.201022.002 2108021431 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus7TProNR/OnePlus7TProNR:11/RKQ1.201022.002/2108021431:user/release-keys
