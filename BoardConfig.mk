# Device Tree: device/samsung/m35x

LOCAL_PATH := device/samsung/m35x

# Bootloader
BOARD_VENDOR := samsung
TARGET_SOC := s5e8835

# -------------------------------------------------------------
# Vendor / Platform / SOC
# -------------------------------------------------------------
BOARD_VENDOR := samsung
TARGET_SOC := s5e8835
TARGET_BOARD_PLATFORM := universal8835
TARGET_BOOTLOADER_BOARD_NAME := s5e8835
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_USES_UEFI := true

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

# File systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab

# Platform
TARGET_BOARD_PLATFORM := universal8835

# Kernel
TARGET_IS_64_BIT := true
TARGET_SUPPORTS_64_BIT_APPS := true

# -------------------------------------------------------------
# Filesystems
# -------------------------------------------------------------
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_HAS_LARGE_FILESYSTEM := true

# -------------------------------------------------------------
# Kernel / DTB / Boot Image
# -------------------------------------------------------------
TARGET_KERNEL_ARCH := arm64
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/Image
TARGET_PREBUILT_DTB := $(LOCAL_PATH)/prebuilt/dtb
BOARD_PREBUILT_DTBOIMAGE := $(LOCAL_PATH)/prebuilt/recovery_dtbo
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_KERNEL_ARCH := arm64

# Boot
BOARD_BOOT_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive bootconfig buildtime_bootconfig=enable loop.max_part=7
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x00000000
BOARD_KERNEL_SECOND_OFFSET := 0xf0000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000000
BOARD_DTB_OFFSET := 0x00000000

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true

# Partitions
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
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 100663312

# Dynamic Partitions
BOARD_SUPER_PARTITION_SIZE := 12582912000
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 12578717696
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext vendor product odm vendor_dlkm

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := erofs
TARGET_COPY_OUT_VENDOR := vendor

# Android Verified Boot
BOARD_ROOT_EXTRA_FOLDERS := carrier data_mirror debug_ramdisk efs linkerconfig metadata odm_dlkm oem optics postinstall prism second_stage_resources spu system_ext vendor_dlkm system_dlkm
BOARD_SUPPRESS_SECURE_ERASE := true

# -------------------------------------------------------------
# AVB / Verified Boot
# -------------------------------------------------------------
BOARD_AVB_ENABLE := true
BOARD_AVB_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flag 2

# PRODUCT_COPY_FILES directives.
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true
ALLOW_MISSING_DEPENDENCIES := true

# Logcat
TARGET_USES_LOGD    := true
TWRP_INCLUDE_LOGCAT := true

# TWRP specific build flags
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_RESETPROP := true
TW_FRAMERATE := 120
TW_NO_SCREEN_BLANK := true
TW_THEME := portrait_hdpi
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# -------------------------------------------------------------
# TWRP / PBRP Features
# -------------------------------------------------------------
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := true
TW_NO_SCREEN_TIMEOUT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_REPACKTOOLS := true
TW_USE_SAMSUNG_HAPTICS := true
TW_BACKUP_EXCLUSIONS := /data/fonts
TW_INCLUDE_NTFS_3G := true
TW_NO_LEGACY_PROPS := true
TW_NO_BIND_SYSTEM := true
TW_INCLUDE_FASTBOOTD := true
TW_HAS_DOWNLOAD_MODE := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
PRODUCT_ENFORCE_VINTF_MANIFEST := true
TW_USE_LEGACY_BATTERY_SERVICES := true

# Brightness config
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 612
TW_DEFAULT_BRIGHTNESS := 255
TW_Y_OFFSET := 80
TW_H_OFFSET := -80
TW_NO_REBOOT_BOOTLOADER := true
TW_USE_NEW_MINADBD := true
TW_USE_TOOLBOX := true
TARGET_USES_MKE2FS := true

# -------------------------------------------------------------
# Crypto / F2FS / Decryption
# -------------------------------------------------------------
TW_INCLUDE_F2FS_SUPPORT := true
TW_USE_NEW_FBE_DECRYPTION := true
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 12
TW_INCLUDE_CRYPTO := false
TW_INCLUDE_CRYPTO_FBE := false
TW_INCLUDE_FBE_METADATA_DECRYPT := true
BOARD_USES_METADATA_PARTITION := true
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)
BOOT_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)
TW_USE_FSCRYPT_POLICY := 2
PLATFORM_VERSION := 14

# A/B OTA (disabled)
AB_OTA_UPDATER := false

TW_DEVICE_VERSION := Shailesh

# USB
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_USE_NEW_MINADBD := true
