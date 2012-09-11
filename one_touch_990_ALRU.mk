#
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

## (1) First, the most specific values, i.e. the aspects that are specific to GSM

PRODUCT_COPY_FILES += \
    device/qcom/one_touch_990_gsm/boot/init.rc:root/init.rc\
    device/qcom/one_touch_990_gsm/boot/init.qcom.rc:root/init.qcom.rc\
    device/qcom/one_touch_990_gsm/boot/initlogo.rle:root/initlogo.rle

# Default network type.
# 0 => WCDMA preferred.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=0

# For emmc phone storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.phone_storage = 0


# This is a 512MB device, so 32mb heapsize
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=32m

## (1) First, the most specific values, i.e. the aspects that are specific to GSM

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/qcom/brandy/brandy-vendor.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

PRODUCT_PACKAGES += \
    librs_jni \
    lights.msm7k \
    gralloc.msm7k \
    libOmxCore \
    copybit.msm7k \
    sensors.msm7k \
    gps.default
#    com.android.future.usb.accessory

PRODUCT_COPY_FILES += \
    device/qcom/one_touch_990_gsm/vold.fstab:system/etc/vold.fstab \
    device/common/gps/gps.conf:system/etc/gps.conf

# stuff common to all phones
$(call inherit-product, device/qcom/common/common.mk)

#PRODUCT_BUILD_PROP_OVERRIDES +=  \
#				PRODUCT_NAME=one_touch_990_ALRU \
#				BUILD_FINGERPRINT=TCT/one_touch_990_ALRU/one_touch_990_gsm:2.3.4/GINGERBREAD/#v5H6-0:user/release-keys/release-keys \
#				PRIVATE_BUILD_DESC="one_touch_990_ALRU-user 2.3.4 GINGERBREAD v5H6-0 release-#keys" \
#				BUILD_NUMBER=v5H6-0

## Device identifier. This must come after all inclusions
PRODUCT_NAME := one_touch_990_ALRU
PRODUCT_DEVICE := one_touch_990_gsm
PRODUCT_MODEL := ALCATEL ONE TOUCH 990
PRODUCT_BRAND := TCT
PRODUCT_BOARD := Brandy
PRODUCT_MANUFACTURER := TCT
