# BoardConfig.mk
#
# Product-specific compile-time definitions
#

TARGET_BOOTLOADER_BOARD_NAME := xcover3ltexx
TARGET_BOARD_PLATFORM := mrvl
TARGET_BOARD_PLATFORM_GPU := vivante-gc700

# Architecture/Bootloader
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=

TARGET_NO_BOOTLOADER := true

# Audio
BOARD_USES_ALSA_AUDIO := true
LOCAL_CFLAGS += -DMR0_AUDIO_BLOB -DRM1_AUDIO_BLOB

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MRVL := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# Display & Graphics
USE_OPENGL_RENDERER := true
LOCAL_CFLAGS += -DSK_SUPPORT_LEGACY_SETCONFIG
BOARD_EGL_CFG := device/samsung/xcover3lte/configs/system/lib/egl/egl.cfg
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Flags
LOCAL_CFLAGS += -DMRVL_HARDWARE
LOCAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
LOCAL_CFLAGS += -DNO_SECURE_DISCARD

# Kernel
TARGET_PREBUILT_KERNEL := device/samsung/xcover3ltexx/kernel.my
PRODUCT_COPY_FILES += \
	$(TARGET_PREBUILT_KERNEL):kernel
BOARD_KERNEL_CMDLINE := console=ttyS0,115200 verbose
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_CUSTOM_MKBOOTIMG := device/samsung/xcover3ltexx/tools/pxa1908-mkbootimg
BOARD_MKBOOTIMG_ARGS := --signature device/samsung/xcover3ltexx/boot.img-signature \
                        --recovery_dtbo device/samsung/xcover3ltexx/boot.img-dt \
                        --unknown 0x3000000 \
                        --ramdisk_offset 0x2000000 \


# Malloc
MALLOC_SVELTE := true

# MRVL
LOCAL_CFLAGS += -DMARVELL_HWC_ENHANCEMENT

# System image configuration
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x60000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x15b400000
BOARD_FLASH_BLOCK_SIZE := 131072

# TWRP
TARGET_RECOVERY_FSTAB := device/samsung/xcover3ltexx/recovery.fstab
RECOVERY_FSTAB_VERSION := 2

