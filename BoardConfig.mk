#
# Copyright (C) 2014 The Android Open-Source Project
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
#

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/y301a2/BoardConfigVendor.mk

# Vendor
BOARD_VENDOR := huawei

# Platform
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
ARCH_ARM_HAVE_TLS_REGISTER := true

# Architecture
TARGET_CPU_SMP := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8960

# Flags
COMMON_GLOBAL_CFLAGS += -DNEW_ION_API -DLPA_DEFAULT_BUFFER_SIZE=32
COMMON_GLOBAL_CFLAGS += -D__ARM_USE_PLD -D__ARM_CACHE_LINE_SIZE=64
TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp

# Krait Optimization
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80200000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000
BOARD_KERNEL_PAGESIZE := 2048
# TARGET_PREBUILT_KERNEL := device/huawei/y301a2/prebuilt/kernel

TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.6
TARGET_KERNEL_CUSTOM_TOOLCHAIN_SUFFIX := arm-eabi-
TARGET_KERNEL_SOURCE := kernel/huawei/y301a2
TARGET_KERNEL_CONFIG := y301a2_defconfig

# Recovery
TARGET_RECOVERY_FSTAB := device/huawei/y301a2/rootdir/recovery/etc/fstab.y301a2
TARGET_RECOVERY_INITRC := device/huawei/y301a2/rootdir/recovery/init.rc
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := false


# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0xC00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x1000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1182793728
BOARD_CACHEIMAGE_PARTITION_SIZE := 201326592
BOARD_FLASH_BLOCK_SIZE := 131072

# USB Mounting
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

# TWRP configs
DEVICE_RESOLUTION := 480x800
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_MISC_PARTITION := true
TW_FLASH_FROM_STORAGE := true
SP1_NAME := "Cust"
SP1_BACKUP_METHOD := files
SP1_MOUNTABLE := 1
TW_INTERNAL_STORAGE_PATH := "/internal_sd"
TW_INTERNAL_STORAGE_MOUNT_POINT := "Internal_sd"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "External_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255

# SEPolicy
BOARD_SEPOLICY_DIRS += device/huawei/y301a2/sepolicy
BOARD_SEPOLICY_UNION += \
    file_contexts \
    file.te

