#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project 
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

DEVICE_PATH := device/sony/akari

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Broken Rules
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo385

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := kryo385
TARGET_USES_64_BIT_BINDER := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
TARGET_KERNEL_ARCH := arm64
NEED_KERNEL_MODULE_SYSTEM := true

# Kernel Cmdline
BOARD_KERNEL_CMDLINE := \
    androidboot.console=ttyMSM0 \
	androidboot.hardware=qcom \
    console=ttyMSM0,115200n8 \
    earlycon=msm_geni_serial,0xA84000 \
	video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 \
	ehci-hcd.park=3 \
	lpm_levels.sleep_disabled=1 \
	service_locator.enable=1 \
	swiotlb=2048 \
	firmware_class.path=/vendor/firmware_mnt/image \
	androidboot.configfs=true \
	loop.max_part=7 \
	androidboot.usbcontroller=a600000.dwc3 \
	oemboot.earlymount=/dev/block/platform/soc/1d84000.ufshc/by-name/oem:/mnt/oem:ext4:ro,barrier=1:wait,slotselect,first_stage_mount \
	panic_on_err=1 \
	loop.max_part=7 \
	msm_drm.dsi_display0=dsi_panel_cmd_display:config0

# Assert
TARGET_OTA_ASSERT_DEVICE := akari

# Platform
TARGET_BOARD_PLATFORM := sdm845
TARGET_BOARD_PLATFORM_GPU := qcom-adreno630

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4227858432
BOARD_USERDATAIMAGE_PARTITION_SIZE := 44712755200
BOARD_VENDORIMAGE_PARTITION_SIZE := 1056714752

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

# Workaround for error copying vendor files to recovery ramdisk
TARGET_COPY_OUT_VENDOR := vendor

# TWRP - Crypto
TW_INCLUDE_CRYPTO := true

# TWRP - Crypto - FBE
BOARD_USES_QCOM_FBE_DECRYPTION := true
TW_INCLUDE_CRYPTO_FBE := true
TW_USE_FSCRYPT_POLICY := 1