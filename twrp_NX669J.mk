#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from NX669J device
$(call inherit-product, device/nubia/NX669J/device.mk)

# Additional system properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.twrp.device=NX669J

# Override build properties
PRODUCT_BUILD_PROP_OVERRIDES += \
    ro.build.date.utc=$(shell date +%s) \
    ro.build.date=$(shell date)

# Device properties
PRODUCT_DEVICE := NX669J
PRODUCT_NAME := twrp_NX669J
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX669J
PRODUCT_MANUFACTURER := nubia

PRODUCT_GMS_CLIENTID_BASE := android-zte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NX669J-UN-user 11 RKQ1.210614.002 nubia.20210924.043249 release-keys"

BUILD_FINGERPRINT := nubia/NX669J-UN/NX669J:11/RKQ1.210614.002/nubia.20210924.043249:user/release-keys

# Additional A/B configuration
AB_OTA_UPDATE_SYSTEM := true
AB_OTA_UPDATE_VENDOR := true

# Additional packages
PRODUCT_PACKAGES += \
    some_extra_package_name

# Boot partition
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/etc/recovery.fstab
