#
# Copyright (C) 2018 The TwrpBuilder Open-Source Project
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

LOCAL_PATH := device/maze_speed/ssb504r

TARGET_BOARD_PLATFORM := mt6580
TARGET_BOOTLOADER_BOARD_NAME := ssb504r

# Resolution
#DEVICE_RESOLUTION := 480x800
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 850

# Changed to force build too large//didn't help cause didn't see it set twice the first time, works now tho
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12335104

# To Include the prebuilt stock kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/device/maze_speed/ssb504r/stock/kernel

# Recovery
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 11948032
BOARD_FLASH_BLOCK_SIZE := 0
#BOARD_HAS_NO_REAL_SDCARD := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
AB_OTA_UPDATER := true
TW_THEME := portrait_mdpi
TW_NO_SCREEN_BLANK := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
#TARGET_HW_DISK_ENCRYPTION := true
TW_CRYPTO_USE_SYSTEM_VOLD := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT :="external_sd"
TW_EXCLUDE_TWRPAPP := true
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := false
TW_DEFAULT_LANGUAGE := en-US
TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_IGNORE_MISC_WIPE_DATA := true
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
#BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TW_USE_LEDS_HAPTICS := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_INPUT_BLACKLIST := "hbtp_vm"
include $(LOCAL_PATH)/kernel.mk
include device/generic/twrpbuilder/BoardConfig32.mk

