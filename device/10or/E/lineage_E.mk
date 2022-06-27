# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from E device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := 10or
PRODUCT_DEVICE := E
PRODUCT_MANUFACTURER := 10or
PRODUCT_NAME := lineage_E
PRODUCT_MODEL := E

PRODUCT_GMS_CLIENTID_BASE := android-10or
TARGET_VENDOR := 10or
TARGET_VENDOR_PRODUCT_NAME := E
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="E-user 8.1.0 OPM1.171019.019 10or_E_V1_0_109 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := 10or/E/E:8.1.0/OPM1.171019.019/10or_E_V1_0_109:user/release-keys
