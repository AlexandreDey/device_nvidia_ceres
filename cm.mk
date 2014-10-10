## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ceres

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/nvidia/ceres/device_ceres.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ceres
PRODUCT_NAME := cm_ceres
PRODUCT_BRAND := nvidia
PRODUCT_MODEL := ceres
PRODUCT_MANUFACTURER := nvidia
