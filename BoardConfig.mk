
# inherit from the proprietary version
-include vendor/zte/aurora/BoardConfigVendor.mk

#TARGET_SPECIFIC_HEADER_PATH += device/zte/aurora/include

TARGET_PROVIDES_INIT_RC := true

# General
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := hayes
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno225
TARGET_BOARD_PLATFORM_FPU := neon

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCU_VARIANT_CPU := cortex-a9
TARGET_CPU_VARIANT := krait
TARGET_CPU_SMP := true
COMMON_GLOBAL_CFLAGS += -D__ARM_USE_PLD -D__ARM_CACHE_LINE_SIZE=64
COMMON_GLOBAL_CFLAGS += -DNEW_ION_API
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# QCOM
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DZTE_CAMERA_HARDWARE
BOARD_USE_QCOM_PMEM := true
TARGET_USES_QCOM_LPA := true

COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DQCOM_ROTATOR_KERNEL_FORMATS
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60

BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_CAMERA_USE_GETBUFFERINFO := true
TARGET_GRALLOC_USES_ASHMEM := true

###

# Audio
#TARGET_QCOM_AUDIO_VARIANT := legacy
BOARD_USES_ALSA_AUDIO := true
TARGET_USES_ION_AUDIO := true
#BOARD_USES_SRS_TRUEMEDIA := true
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true

# Camera
#V4L2_BASED_LIBCAM :=true
#TARGET_PROVIDES_CAMERA_HAL := true
TARGET_DISABLE_ARM_PIE := true
BOARD_NEEDS_MEMORYHEAPPMEM := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/zte/aurora/bluetooth

# Display/Graphics
TARGET_DISPLAY_USE_RETIRE_FENCE := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
BOARD_EGL_CFG := device/zte/aurora/prebuilts/lib/egl/egl.cfg
BOARD_USES_ADRENO_200 := true
BOARD_USES_GENLOCK := true
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_SF_BYPASS := true
TARGET_USES_OVERLAY := true
BOARD_USES_HWCOMPOSER := true
TARGET_NO_HW_VSYNC := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# FM Radio
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFAGS += -DHAVE_FM_RADIO

# GPS
BOARD_USES_QCOM_GPS := true
TARGET_NO_RPC := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default

# JIT / Optimizations
WITH_DEXPREOPT := true
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8

# Media
TARGET_QCOM_MEDIA_VARIANT := legacy
#DISABLE_MM-VIDEO := true

# Power
TARGET_PROVIDES_POWERHAL := true
TARGET_PREBUILT_HEADERS := true

# Sensors

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
WEBCORE_INPAGE_VIDEO := true

# Wifi
# HOSTAPD-derived wifi driver
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_MODULE_NAME := prima_wlan
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/prima_wlan.ko"
WPA_SUPPLICANT_VERSION := VER_0_8_X

###

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 loglevel=7 kgsl.mmutype=gpummu
BOARD_KERNEL_BASE := 0x80200000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01300000
BOARD_KERNEL_PAGESIZE := 2048

TARGET_PREBUILT_KERNEL := device/zte/aurora/kernel
TARGET_KERNEL_CONFIG := aurora_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

# Parttions/filesystem
# Get values by examining /proc/partitions on a running device & multiply by 1024
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 587202560
BOARD_CACHEIMAGE_PARTITION_SIZE := 318767104
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2617245696
BOARD_PERSISTIMAGE_PARTITION_SIZE := 25165824
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4 := true
#BOARD_HAS_LARGE_FILESYSTEM := true
#BOARD_USES_MMCUTILS := true

# Recovery
RECOVERY_FSTAB_VERSION = 2
TARGET_RECOVERY_FSTAB := device/zte/aurora/recovery/fstab.aurora
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_PREBUILT_RECOVERY_KERNEL := device/zte/aurora/recovery/kernel
BOARD_HAS_NO_SELECT_BUTTON := true

#TWRP flags
DEVICE_RESOLUTION := 460x800
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_HAS_NO_RECOVERY_PARTITION := true
TW_FLASH_FROM_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
#TW_INCLUDE_CRYPTO := true
TW_INCLUDE_JB_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/msm_sdcc.1/by-name/Userdata"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,barrier=1,noauto_da_alloc,discard"
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_KEY_LOC := "footer"
TW_INCLUDE_FUSE_EXFAT := true
TW_BOARD_CUSTOM_GRAPHICS := ../../../device/zte/aurora/recovery/graphics.c
TW_MAX_BRIGHTNESS := 255
TW_NO_USB_STORAGE := true

# USB
#BOARD_CUSTOM_USB_CONTROLLER := ../../device/zte/aurora/UsbController.cpp
#BOARD_USE_USB_MASS_STORAGE_SWITCH := true
#BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# Vold
#BOARD_VOLD_MAX_PARTITIONS := 20
#BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
#TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1

# default props
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.debuggable=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.adb.enable=1

#TARGET_PROVIDES_RELEASETOOLS := true
#TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/zte/aurora/releasetools/aurora_ota_from_target_files
