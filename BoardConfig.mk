#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/infinix/X6711

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Build rules
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55

TARGET_USES_64_BIT_BINDER := true

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6833
TARGET_NO_BOOTLOADER := true

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_KERNEL_IMAGE_NAME := kernel

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_BOOT_HEADER_VERSION := 4
BOARD_PAGE_SIZE := 4096
BOARD_KERNEL_BASE := 0x40078000
BOARD_RAMDISK_OFFSET := 0x11088000
BOARD_TAGS_OFFSET := 0x07c08000

BOARD_MKBOOTIMG_ARGS += \
    --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
    --pagesize $(BOARD_PAGE_SIZE) --board ""
    --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
    --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)

# Android Verified Boot
BOARD_AVB_ENABLE := true

# Assert
TARGET_OTA_ASSERT_DEVICE := X6711,Infinix-X6711

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_USES_METADATA_PARTITION := true
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := main
BOARD_MAIN_SIZE := 9122611200
BOARD_MAIN_PARTITION_LIST := \
    system \
    system \
    system_ext \
    vendor \
    product
