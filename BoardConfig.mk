#
<<<<<<< HEAD
# Copyright (C) 2022 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
=======
# BoardConfig.mk for Samsung Galaxy M35x (Exynos 1380)
# Device Tree: device/samsung/m35x
>>>>>>> 04b2260 (Initial commit)
#

LOCAL_PATH := device/samsung/m35x

<<<<<<< HEAD
# Bootloader
BOARD_VENDOR := samsung
TARGET_SOC := s5e8835
=======
# -------------------------------------------------------------
# Vendor / Platform / SOC
# -------------------------------------------------------------
BOARD_VENDOR := samsung
TARGET_SOC := s5e8835
TARGET_BOARD_PLATFORM := universal8835
>>>>>>> 04b2260 (Initial commit)
TARGET_BOOTLOADER_BOARD_NAME := s5e8835
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_USES_UEFI := true

<<<<<<< HEAD
# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_USES_64_BIT_BINDER := true

TARGET_CPU_SMP := true
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

ALLOW_MISSING_DEPENDENCIES := true

# File systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Platform
TARGET_BOARD_PLATFORM := universal8835

# Kernel
=======
# -------------------------------------------------------------
# Architecture
# -------------------------------------------------------------
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_VARIANT_RUNTIME := cortex-a53
TARGET_CPU_ABI := arm64-v8a
TARGET_USES_64_BIT_BINDER := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true
TARGET_CPU_SMP := true
TARGET_IS_64_BIT := true
TARGET_SUPPORTS_64_BIT_APPS := true

# -------------------------------------------------------------
# Filesystems
# -------------------------------------------------------------
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := erofs
TARGET_COPY_OUT_VENDOR := vendor
BOARD_HAS_LARGE_FILESYSTEM := true

# -------------------------------------------------------------
# Kernel / DTB / Boot Image
# -------------------------------------------------------------
TARGET_KERNEL_ARCH := arm64
>>>>>>> 04b2260 (Initial commit)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/Image
TARGET_PREBUILT_DTB := $(LOCAL_PATH)/prebuilt/dtb
BOARD_PREBUILT_DTBOIMAGE := $(LOCAL_PATH)/prebuilt/recovery_dtbo
BOARD_INCLUDE_RECOVERY_DTBO := true
<<<<<<< HEAD
TARGET_KERNEL_ARCH := arm64

# Boot
BOARD_BOOT_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive bootconfig buildtime_bootconfig=enable loop.max_part=7
BOARD_KERNEL_IMAGE_NAME := Image
=======

BOARD_KERNEL_IMAGE_NAME := Image
BOARD_BOOT_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x10000000
>>>>>>> 04b2260 (Initial commit)
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x00000000
BOARD_KERNEL_SECOND_OFFSET := 0xf0000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000000
BOARD_DTB_OFFSET := 0x00000000
<<<<<<< HEAD
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) 
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION) --pagesize $(BOARD_KERNEL_PAGESIZE) --board "SRPXA30A003"
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB) --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkboot/bootimg.mk

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true

# Partitions
=======

BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --board "SRPXA30A003"
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkboot/bootimg.mk

# -------------------------------------------------------------
# Partitions
# -------------------------------------------------------------
>>>>>>> 04b2260 (Initial commit)
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 100663296

<<<<<<< HEAD
# Dynamic Partitions
=======
>>>>>>> 04b2260 (Initial commit)
BOARD_SUPER_PARTITION_SIZE := 12582912000
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 12578717696
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext vendor product odm vendor_dlkm

<<<<<<< HEAD
# System as root
BOARD_ROOT_EXTRA_FOLDERS := carrier data_mirror debug_ramdisk efs linkerconfig metadata odm_dlkm oem optics postinstall prism second_stage_resources spu system_ext vendor_dlkm system_dlkm
BOARD_SUPPRESS_SECURE_ERASE := true

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := erofs
TARGET_COPY_OUT_VENDOR := vendor

AB_OTA_UPDATER := false

# Android Verified Boot
=======
BOARD_ROOT_EXTRA_FOLDERS := carrier data_mirror debug_ramdisk efs linkerconfig metadata odm_dlkm oem optics postinstall prism second_stage_resources spu system_ext vendor_dlkm system_dlkm
BOARD_SUPPRESS_SECURE_ERASE := true

# -------------------------------------------------------------
# AVB / Verified Boot
# -------------------------------------------------------------
>>>>>>> 04b2260 (Initial commit)
BOARD_AVB_ENABLE := true
BOARD_AVB_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flag 2

<<<<<<< HEAD
# Crypto
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 12
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
BOARD_USES_METADATA_PARTITION := true

# PRODUCT_COPY_FILES directives.
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true

# Logcat
TARGET_USES_LOGD    := true
TWRP_INCLUDE_LOGCAT := true

# TWRP specific build flags
TW_DEVICE_VERSION := Samsung Galaxy M35 5G (Exynos)
TW_USE_SAMSUNG_HAPTICS := true
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_RESETPROP := true
TW_FRAMERATE := 120
TW_NO_SCREEN_BLANK := true
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
=======
# -------------------------------------------------------------
# Security Patch (dummy for bypass)
# -------------------------------------------------------------
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 12

# -------------------------------------------------------------
# TWRP / PBRP Features
# -------------------------------------------------------------
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := true
TW_NO_SCREEN_TIMEOUT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_USE_NEW_MINADBD := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_DEVICE_VERSION := Samsung Galaxy M35 5G (Exynos)
TW_EXTRA_LANGUAGES := true
TW_FRAMERATE := 120
TW_NO_REBOOT_BOOTLOADER := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_REPACKTOOLS := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_USE_SAMSUNG_HAPTICS := true
TW_BACKUP_EXCLUSIONS := /data/fonts
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_LOGCAT := true
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_NO_LEGACY_PROPS := true
TW_NO_BIND_SYSTEM := true
TW_INCLUDE_FASTBOOTD := true
TW_HAS_DOWNLOAD_MODE := true

# Brightness config
>>>>>>> 04b2260 (Initial commit)
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 612
TW_DEFAULT_BRIGHTNESS := 255
TW_Y_OFFSET := 80
TW_H_OFFSET := -80
<<<<<<< HEAD
TW_INCLUDE_FASTBOOTD := true
TW_EXTRA_LANGUAGES := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
TW_USE_NEW_MINADBD := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_USE_TOOLBOX := true
TARGET_USES_MKE2FS := true
TW_NO_LEGACY_PROPS := true
TW_NO_BIND_SYSTEM := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_BACKUP_EXCLUSIONS := /data/fonts
=======

# Pixel format
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
RECOVERY_SDCARD_ON_DATA := true

# -------------------------------------------------------------
# Crypto / F2FS / Decryption
# -------------------------------------------------------------
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
TW_INCLUDE_F2FS_SUPPORT := true
TW_USE_FSCRYPT_POLICY := 1
TW_USE_NEW_FBE_DECRYPTION := true
BOARD_USES_METADATA_PARTITION := true

# -------------------------------------------------------------
# Build System Workarounds
# -------------------------------------------------------------
ALLOW_MISSING_DEPENDENCIES := true
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# A/B OTA (disabled)
AB_OTA_UPDATER := false

>>>>>>> 04b2260 (Initial commit)
