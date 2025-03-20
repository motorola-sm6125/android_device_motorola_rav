#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/motorola/sm6125-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/rav

# Kernel
TARGET_KERNEL_CONFIG += vendor/motorola/rav.config

# Include the proprietary files BoardConfig.
include vendor/motorola/rav/BoardConfigVendor.mk
