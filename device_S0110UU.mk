$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/BLU/S0110UU/S0110UU-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/BLU/S0110UU/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/BLU/S0110UU/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_S0110UU
PRODUCT_DEVICE := BLU_STUDIO_ONE
PRODUCT_MODEL := BLU STUDIO ONE
PRODUCT_MANUFACTURER := BLU

#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/root/enableswap.sh:root/enableswap.sh \
#    $(LOCAL_PATH)/root/factory_init.project.rc:root/factory_init.project.rc \
#    $(LOCAL_PATH)/root/factory_init.rc:root/factory_init.rc \
#    $(LOCAL_PATH)/root/fstab.mt6735:root/fstab.mt6735 \
#    $(LOCAL_PATH)/root/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
#    $(LOCAL_PATH)/root/meta_init.modem.rc:root/meta_init.modem.rc \
#    $(LOCAL_PATH)/root/meta_init.project.rc:root/meta_init.project.rc \
#    $(LOCAL_PATH)/root/meta_init.rc:root/meta_init.rc \
#    $(LOCAL_PATH)/root/ueventd.rc:root/ueventd.rc