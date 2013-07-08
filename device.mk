#
# Copyright 2012 The Android Open Source Project
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


PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi


PRODUCT_PACKAGES := \
    lights.semc \
    e2fsck

# Display
PRODUCT_PACKAGES += \
	libgenlock \
	liboverlay \
	hwcomposer.msm8660 \
	gralloc.msm8660 \
	copybit.msm8660

PRODUCT_PACKAGES += \
        mm-vdec-omx-test \
        mm-venc-omx-test720p \
        libdivxdrmdecrypt \
        libOmxVdec \
        libOmxVenc \
        libOmxCore \
        libstagefrighthw \
        libc2dcolorconvert

# Audio
PRODUCT_PACKAGES += \
	audio_policy.msm8660 \
	audio.primary.msm8660 \
	audio.a2dp.default

# NFC
PRODUCT_PACKAGES += \
    nfc.msm8660 \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := device/sony/nozomi/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := device/sony/nozomi/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

# Busybox
PRODUCT_PACKAGES += \
	busybox \
	static_busybox


# Bluetooth
PRODUCT_PACKAGES += \
	libbt-vendor \
	libbluedroid \
	brcm_patchram_plus \
	bt_vendor.conf

# Mail
PRODUCT_PACKAGES += \
    Email \
    Stk

# EAP SIM
PRODUCT_PACKAGES += \
    apdu

PRODUCT_CHARACTERISTICS := nosdcard

DEVICE_PACKAGE_OVERLAYS += device/sony/nozomi/overlay

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Wifi direct is not working with sony binaries for now
#    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml



# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi


# Configuration scripts
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/recovery.fstab:root/recovery.fstab \
   $(LOCAL_PATH)/config/fstab.nozomi:root/fstab.nozomi \
   $(LOCAL_PATH)/config/vold.fstab:system/etc/vold.fstab \
   $(LOCAL_PATH)/config/audio_policy.conf:system/etc/audio_policy.conf \
   $(LOCAL_PATH)/prebuilt/hw_config.sh:system/etc/hw_config.sh

# Config files
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/config/flashled_calc_parameters.cfg:system/etc/flashled_calc_parameters.cfg \
   $(LOCAL_PATH)/config/media_codecs.xml:system/etc/media_codecs.xml \
   $(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml

# Common Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/sony/nozomi/config/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh

# Custom init / uevent
PRODUCT_COPY_FILES += \
    device/sony/nozomi/config/init.semc.rc:root/init.semc.rc \
    device/sony/nozomi/config/ueventd.semc.rc:root/ueventd.semc.rc

# USB function switching
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/config/init.semc.usb.rc:root/init.semc.usb.rc

# Addons
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/addons/busybox:system/xbin/busybox 

# SuperSU
PRODUCT_PACKAGES += \
   Superuser

PRODUCT_COPY_FILES += $(LOCAL_PATH)/supersu/su:system/xbin/su

# Key layouts and touchscreen
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/config/atdaemon.kl:system/usr/keylayout/atdaemon.kl \
   $(LOCAL_PATH)/config/clearpad.kl:system/usr/keylayout/clearpad.kl \
   $(LOCAL_PATH)/config/clearpad.idc:system/usr/idc/clearpad.idc \
   $(LOCAL_PATH)/config/fuji-keypad.kl:system/usr/keylayout/fuji-keypad.kl \
   $(LOCAL_PATH)/config/gpio-key.kl:system/usr/keylayout/gpio-key.kl \
   $(LOCAL_PATH)/config/keypad-pmic-fuji.kl:system/usr/keylayout/keypad-pmic-fuji.kl \
   $(LOCAL_PATH)/config/pmic8058_pwrkey.kl:system/usr/keylayout/pmic8058_pwrkey.kl \
   $(LOCAL_PATH)/config/simple_remote.kl:system/usr/keylayout/simple_remote.kl


# Wifi
BOARD_WLAN_DEVICE_REV := bcm4330_b2
WIFI_BAND             := 802_11_ABG

#
# We now use sony firmwares
# $(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/calibration:system/etc/wifi/calibration

# Kernel

PRODUCT_PACKAGE += \
	sin

$(call inherit-product, $(LOCAL_PATH)/broadcom/wlan/Android.mk)


# Set default USB interface
#PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
#    persist.sys.usb.config=mtp

# QC Perf
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.vendor.extension_library=/system/lib/libqc-opt.so


# Audio
# PRODUCT_PROPERTY_OVERRIDES += \
#    lpa.decode=false

# QCOM CpuGovernorService
# PRODUCT_PROPERTY_OVERRIDES += \
#    dev.pm.dyn_samplingrate=1

# Wifi
#    wifi.interface=wlan0 \
#    wifi.supplicant_scan_interval=30


$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, vendor/sony/nozomi/nozomi-vendor.mk)
$(call inherit-product, kernel/AndroidKernel.mk)
