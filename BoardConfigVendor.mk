#
# Copyright (C) 2024 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

FIRMWARE_IMAGES := $(wildcard vendor/xiaomi/alioth-firmware/images/*)

AB_OTA_PARTITIONS += \
    $(foreach f, $(notdir $(FIRMWARE_IMAGES)), $(basename $(f)))
