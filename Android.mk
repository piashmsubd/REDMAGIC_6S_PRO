#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),NX669J)
include $(LOCAL_PATH)/BoardConfig.mk
include $(LOCAL_PATH)/device.mk
include $(LOCAL_PATH)/twrp_NX669J.mk
endif
