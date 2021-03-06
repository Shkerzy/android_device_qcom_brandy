# Copyright (c) 2009, Code Aurora Forum.
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

#
# config.mk
#
# Product-specific compile-time definitions.
#

ifeq ($(QC_PROP),true)
    BOARD_USES_QCOM_HARDWARE := true
    BOARD_USES_ADRENO_200 := true
    HAVE_ADRENO200_SOURCE := true
    HAVE_ADRENO200_SC_SOURCE := true
    HAVE_ADRENO200_FIRMWARE := true
    BOARD_USE_QCOM_TESTONLY := true

    ifneq ($(BUILD_TINY_ANDROID), true)
    BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50001
    BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
    BOARD_CAMERA_LIBRARIES := libcamera
    BOARD_HAVE_BLUETOOTH := true
    BOARD_HAS_QCOM_WLAN := true
    #BOARD_USES_GENERIC_AUDIO := true
    BOARD_WPA_SUPPLICANT_DRIVER := WEXT
    WPA_SUPPLICANT_VERSION := VER_0_6_X
    WIFI_DRIVER_MODULE_PATH :=  "/system/lib/modules/libra.ko"
    WIFI_DRIVER_MODULE_NAME :=  "libra"
    endif   # !BUILD_TINY_ANDROID

else
#    #BOARD_USES_GENERIC_AUDIO := true
#    USE_CAMERA_STUB := true

endif # QC_PROP

#BOARD_USES_GENERIC_AUDIO := true
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
BOARD_NO_SPEAKER := false

USE_CAMERA_STUB := true
#BOARD_USE_FROYO_LIBCAMERA := true

JS_ENGINE :=v8

TARGET_HAVE_TSLIB := true

### enable ril
#TARGET_PROVIDES_LIBRIL := true

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

BOARD_USES_ADRENO_200 := true
HAVE_ADRENO200_FIRMWARE := true
### enable 3d
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

### enable 2d
BOARD_NO_RGBX_8888 := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true

TARGET_GLOBAL_CFLAGS += -mfpu=vfp -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=vfp -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_BOARD_PLATFORM := msm7k
TARGET_BOOTLOADER_BOARD_NAME := Brandy
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
TARGET_AVOID_DRAW_TEXTURE_EXTENSION := true
QCOM_TARGET_PRODUCT := msm7627_ffa

BOARD_KERNEL_BASE    := 0x13600000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_KERNEL_CMDLINE := mem=458M console=ttyMSM2,115200n8 androidboot.hardware=qcom
BOARD_EGL_CFG := device/qcom/$(TARGET_DEVICE)/egl.cfg

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x005C0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0D200000
#BOARD_CUSTPACKIMAGE_PARTITION_SIZE := 0x07300000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x09E60000
BOARD_CACHEIMAGE_PARTITION_SIZE := 0x03C00000
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
TARGET_USERIMAGES_USE_EXT4 := false
TARGET_SPECIFIC_HEADER_PATH := device/qcom/$(TARGET_DEVICE)/include

BOARD_VENDOR_USE_AKMD := akm8975
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := bcm4329
BOARD_USE_USB_MASS_STORAGE_SWITCH := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BRCM_BT_USE_BTL_IF := true
BT_ALT_STACK := true

BOARD_VENDOR_QCOM_AMSS_VERSION := 6180

BOARD_USES_QCOM_GPS := true
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50001

# Wifi related defines
BOARD_HAVE_WIFI := true
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/wlan/broadcom/fw_bcm4329.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/wlan/broadcom/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/wlan/broadcom/fw_bcm4329.bin nvram_path=/system/wlan/broadcom/nvram.txt"
WIFI_DRIVER_MODULE_NAME     := "bcm4329"

DISABLE_DEXPREOPT := true

QCOM_CUSTOM := true

include device/qcom/$(TARGET_DEVICE)/qcom_custom.mk
