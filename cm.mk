## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := Vitria

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/y301a2/y301a2.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := y301a2
PRODUCT_NAME := cm_y301a2
PRODUCT_BRAND := qcom
PRODUCT_MODEL := y301a2
PRODUCT_MANUFACTURER := huawei
