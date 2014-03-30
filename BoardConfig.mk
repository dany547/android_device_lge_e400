USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/e400/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_SMP := true
TARGET_BOOTLOADER_BOARD_NAME := e400
TARGET_CORTEX_CACHE_LINE_32 := true
TARGET_USE_SPARROW_BIONIC_OPTIMIZATION := true
TARGET_ARCH := arm
TARGET_CPU_VARIANT := cortex-a5
TARGET_BOOTLOADER_BOARD_NAME := e400

BOARD_KERNEL_CMDLINE := androidboot.hardware=e0 lge.signed_image=false

BOARD_KERNEL_BASE := 0x00200000
BOARD_BOARD_MKBOOTIMG_ARGS := 0x01300000
BOARD_KERNEL_PAGESIZE := 4096

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 392167424
BOARD_USERDATAIMAGE_PARTITION_SIZE := 164626432
BOARD_FLASH_BLOCK_SIZE := 131072


BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := e400
QCOM_BSP := false

TARGET_USERIMAGES_USE_EXT4 := true

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_ROTATOR_KERNEL_FORMATS



TARGET_PREBUILT_KERNEL := device/lge/e400/kernel

# QCOM stuffs
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_OVERLAY := false
TARGET_HAVE_BYPASS  := false
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_GENLOCK := true
TARGET_QCOM_HDMI_OUT := false
TARGET_FORCE_CPU_UPLOAD := true
BOARD_USES_QCOM_LIBS := true
BOARD_USE_QCOM_PMEM := true
TARGET_GRALLOC_USES_ASHMEM := true
TARGET_USES_ION:=true

# QCOM stuffs
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_OVERLAY := false
TARGET_HAVE_BYPASS  := false
TARGET_USES_GENLOCK := true
TARGET_QCOM_HDMI_OUT := false
TARGET_FORCE_CPU_UPLOAD := true
BOARD_USES_QCOM_LIBS := true
TARGET_USES_ION:=true
BOARD_EGL_CFG := device/lge/e400/egl.cfg
BOARD_HAVE_BLUETOOTH := true

## Mass Storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun/file

## Browser & WebKit
ENABLE_WEBGL := true

## TEMPORARY HACK: skip building external/chromium_org/
#PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

#recovery resolution fix
#twrp
DEVICE_RESOLUTION := 240x320
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TW_INTERNAL_STORAGE_PATH := "/emmc"
TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
TW_EXTERNAL_STORAGE_PATH := "/external sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
HAVE_SELINUX := true
BOARD_USE_CUSTOM_RECOVERY_FONT := "<font_7x16.h>"
TW_FLASH_FROM_STORAGE := true
#BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
#TWRP_EVENT_LOGGING := true 
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TARGET_PREBUILT_RECOVERY_KERNEL := device/lge/e400/kernel
TARGET_RECOVERY_INITRC := bootable/recovery/etc/init.rc
TARGET_RECOVERY_FSTAB := device/lge/e400/twrp/recovery.fstab
BOARD_CUSTOM_GRAPHICS := device/lge/e400/ramdisk/graphics.c
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun/file
#end
