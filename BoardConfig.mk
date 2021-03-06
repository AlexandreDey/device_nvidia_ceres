USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/nvidia/ceres/BoardConfigVendor.mk


TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := tegra
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

TARGET_BOOTLOADER_BOARD_NAME := ceres

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x30000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x7fe00000
BOARD_FLASH_BLOCK_SIZE := 131072


TARGET_KERNEL_SOURCE := kernel/nvidia/ceres
TARGET_KERNEL_CONFIG := tegra_s8515_cpasjuste_defconfig
#TARGET_PREBUILT_KERNEL := device/nvidia/ceres/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_PREBUILT_RECOVERY_KERNEL := device/nvidia/ceres/kernel
