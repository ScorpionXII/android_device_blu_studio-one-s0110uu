# Release name
PRODUCT_RELEASE_NAME := S0110UU

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/BLU/S0110UU/device_S0110UU.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_S0110UU
PRODUCT_DEVICE := S0110UU
PRODUCT_MODEL := S0110UU
PRODUCT_MANUFACTURER := BLU
PRODUCT_BRAND := BLU
