#
# Copyright (C) 2014 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

USE_CAMERA_STUB := false
TARGET_NO_BOOTLOADER := true

TARGET_SPECIFIC_HEADER_PATH += device/lge/x5/include


# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm

# Platform
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305
TARGET_BOARD_PLATFORM := msm8226
TARGET_CPU_VARIANT := krait
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_USE_KINGFISHER_OPTIMIZATION := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := x5

TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Kernel image
BOARD_KERNEL_SEPARATED_DT := true
BOARD_CUSTOM_BOOTIMG_MK := device/lge/x5/mkbootimg.mk
TARGET_KERNEL_SOURCE := kernel/lge/msm8226
#TARGET_KERNEL_SOURCE := kernel/lge/msm8926
TARGET_BOARD_USE_DTS := msm8226-x5_spr_us
#TARGET_KERNEL_CONFIG := cm11_x5_defconfig
TARGET_KERNEL_CONFIG := x5_spr_us_defconfig
#TARGET_KERNEL_CONFIG := cm12_msm8226_defconfig
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 msm_rtb.filter=0x37 androidboot.hardware=x5
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01e00000
TARGET_REQUIRES_BUMP := true

# Global flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DLG_CAMERA_HARDWARE

# QCOM BSP
#TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DQCOM_DIRECTTRACK

# Audio
AUDIO_FEATURE_DISABLED_FM := false
BOARD_HAVE_QCOM_FM := true
AUDIO_FEATURE_DISABLED_ANC_HEADSET := true
AUDIO_FEATURE_DISABLED_DS1_DOLBY_DDP := true
BOARD_USES_LEGACY_ALSA_AUDIO := true
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true
BOARD_USES_SEPERATED_VOICE_SPEAKER := true
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_USES_QCOM_COMPRESSED_AUDIO := true
TARGET_QCOM_MEDIA_VARIANT := caf-new

# GPS
TARGET_NO_RPC := true

# Graphics
BOARD_EGL_CFG := device/lge/x5/prebuilt/egl.cfg
TARGET_DISPLAY_USE_RETIRE_FENCE := true
TARGET_QCOM_DISPLAY_VARIANT := caf-new
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# Use qcom power hal
TARGET_POWERHAL_VARIANT := qcom
TARGET_USES_CPU_BOOST_HINT := true

TARGET_HW_DISK_ENCRYPTION := true

# Hardware tunables framework
BOARD_HARDWARE_CLASS := device/lge/x5/cmhw/

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/x5/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
TARGET_USES_WCNSS_CTRL := true
TARGET_USES_QCOM_WCNSS_QMI := true
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"

# Enable WEBGL in WebKit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# QCOM enhanced A/V
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_DISPLAY_INSECURE_MM_HEAP := true

# Number of supplementary service groups allowed by init
TARGET_NR_SVC_SUPP_GIDS := 28
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := false

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Storage
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 40
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01600000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true

# TWRP Recovery
TARGET_RECOVERY_FSTAB := device/lge/x5/rootdir/recovery.fstab
RECOVERY_FSTAB_VERSION := 2
DEVICE_RESOLUTION := 540x960
TW_FLASH_FROM_STORAGE := true
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_SD"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_SD"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_SUPPRESS_EMMC_WIPE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
HAVE_SELINUX := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_NO_REBOOT_BOOTLOADER := true
RECOVERY_SDCARD_ON_DATA := true

PRODUCT_COPY_FILES += device/lge/x5/rootdir/twrp.fstab:recovery/root/etc/twrp.fstab

BOARD_NFC_HAL_SUFFIX := x5
BOARD_NFC_CHIPSET := pn544

# Some other custom variables
TARGET_KERNEL_HAS_NFC := true

# SELinux
BOARD_SEPOLICY_DIRS += \
	device/lge/x5/sepolicy

BOARD_SEPOLICY_UNION += \
	adbd.te \
	app.te \
	bluetooth_loader.te \
	bridge.te \
	camera.te \
	device.te \
	dhcp.te \
	dnsmasq.te \
	domain.te \
	drmserver.te \
	file_contexts \
	file.te \
	hostapd.te \
	init_shell.te \
	init.te \
	libqc-opt.te \
	mediaserver.te \
	mpdecision.te \
	netd.te \
	netmgrd.te \
	property_contexts \
	property.te \
	qcom.te \
	qmux.te \
	radio.te \
	rild.te \
	rmt.te \
	sdcard_internal.te \
	sdcardd.te \
	sensors.te \
	shell.te \
	surfaceflinger.te \
	system.te \
	tee.te \
	te_macros \
	thermald.te \
	ueventd.te \
	vold.te \
	wpa_supplicant.te \
	zygote.te

ifeq ($(TARGET_KERNEL_HAS_NFC),true)
  BOARD_SEPOLICY_UNION += nfc.te
endif

ifneq ($(TARGET_BUILD_VARIANT),user)
	BOARD_SEPOLICY_UNION += su.te
endif

