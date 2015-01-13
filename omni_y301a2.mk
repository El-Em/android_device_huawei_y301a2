# Release name
PRODUCT_RELEASE_NAME := Vitria

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration.
$(call inherit-product, device/huawei/y301a2/y301a2.mk)

# Device identifier.
PRODUCT_DEVICE := y301a2
PRODUCT_NAME := omni_y301a2
PRODUCT_BRAND := qcom
PRODUCT_MODEL := y301a2
PRODUCT_MANUFACTURER := huawei
