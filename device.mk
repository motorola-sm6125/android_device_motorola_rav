#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Boot animation
TARGET_SCREEN_HEIGHT := 1560
TARGET_SCREEN_WIDTH := 720

# Overlay
PRODUCT_PACKAGES += \
    SettingsProvider-Rav-Overlay

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/motorola/sm6125-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/motorola/rav/rav-vendor.mk)
