#
# Copyright (C) 2023 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# API
PRODUCT_SHIPPING_API_LEVEL := 26

# GSI
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# QCOM Decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Screen
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# TWRP Configuration
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_USE_TOOLBOX := true
TW_INCLUDE_REPACKTOOLS := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_MAX_BRIGHTNESS := 1023
TW_DEFAULT_BRIGHTNESS := 420
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TARGET_USES_MKE2FS := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_EXCLUDE_APEX := true

# Crypto
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0