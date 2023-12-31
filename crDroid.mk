$(call inherit-product, vendor/graphene/config/common_full_phone.mk)
$(call inherit-product, vendor/graphene/config/BoardConfigSoong.mk)
$(call inherit-product, device/graphene/sepolicy/common/sepolicy.mk)
-include vendor/graphene/build/core/config.mk

BOARD_EXT4_SHARE_DUP_BLOCKS := true

TARGET_BOOT_ANIMATION_RES := 1080

TARGET_SUPPORTS_QUICK_TAP := true

TARGET_USES_PREBUILT_VENDOR_SEPOLICY := true
TARGET_HAS_FUSEBLK_SEPOLICY_ON_VENDOR := true

PRODUCT_PACKAGES += \
    androidx.window.extensions
