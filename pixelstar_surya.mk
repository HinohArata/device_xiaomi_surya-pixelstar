#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from surya device
$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/pixelstar/config/common_full_phone.mk)

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

# Pixelstar Flags
PIXELSTAR_BUILD_TYPE := UNOFFICIAL
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_CARRIER_SETTINGS := true
TARGET_SUPPORTS_NOW_PLAYING := true
TARGET_SUPPORTS_LILY_EXPERIENCE := true
TARGET_SUPPORTS_GOOGLE_BATTERY := false
TARGET_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
USE_PIXEL_CHARGER := true
TARGET_SUPPORTS_QUICK_TAP := true 
TARGET_SUPPORTS_CALL_RECORDING := true

# Device Manufacture
PRODUCT_NAME := pixelstar_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2007J20CG
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
USE_GMS := true

BUILD_FINGERPRINT := POCO/surya_global/surya:12/RKQ1.211019.001/V14.0.2.0.SJGMIXM:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="surya_global-user 12 RKQ1.211019.001 V14.0.2.0.SJGMIXM release-keys"
