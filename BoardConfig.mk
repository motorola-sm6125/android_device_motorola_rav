#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# A/B
AB_OTA_PARTITIONS += \
    odm \
    product \
    system_ext \
    recovery

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_PRODUCTIMAGE_MINIMAL_PARTITION_RESERVED_SIZE := false
-include vendor/lineage/config/BoardConfigReservedSize.mk
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_MOT_DYNAMIC_PARTITIONS_PARTITION_LIST := odm product system system_ext vendor
BOARD_MOT_DYNAMIC_PARTITIONS_SIZE := 4462739456
BOARD_SUPER_PARTITION_SIZE := 8925478912
TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext

# Recovery
BOARD_INCLUDE_RECOVERY_DTBO := true

# Verified boot
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Include the common OEM chipset BoardConfig.
include device/motorola/sm6125-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/rav

# Kernel
TARGET_KERNEL_CONFIG += vendor/motorola/rav.config

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/init/fstab.qcom

# Include the proprietary files BoardConfig.
include vendor/motorola/rav/BoardConfigVendor.mk
