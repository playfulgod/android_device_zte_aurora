## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := aurora

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/aurora/device_aurora.mk)

# Correct boot animation size for the screen.
TARGET_BOOTANIMATION_NAME := vertical-480x800

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := aurora
PRODUCT_NAME := cm_aurora
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := N9100
PRODUCT_MANUFACTURER := ZTE
