#
# Copyright (C) 2022 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),alioth)

$(info Including firmware for alioth...)

FIRMWARE_IMAGES := $(wildcard $(LOCAL_PATH)/images/*)

$(foreach f, $(notdir $(FIRMWARE_IMAGES)), \
    $(call add-radio-file,images/$(f)))

endif
