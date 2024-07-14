# Color
cyan="\033[96m"
green="\033[92m"
red="\033[91m"
blue="\033[94m"
yellow="\033[93m"

# Hardware
HW="hardware/xiaomi"
if ! [ -d "$HW" ]; then
    echo "${blue}$HW not found! Cloning to now...\033[0m"
    if ! git clone -q https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-21 hardware/xiaomi; then
        echo "Cloning failed! Aborting...\033[0m"
        exit 1
    fi
fi

# Vendor
VT="vendor/xiaomi/surya"
if ! [ -d "$VT" ]; then
    echo "${blue}$VT not found! Cloning to now...\033[0m"
    if ! git clone -q https://github.com/HinohArata/surya_vendor.git -b 14 vendor/xiaomi/surya; then
        echo "${red}Cloning failed! Aborting...\033[0m"
        exit 1
    fi
fi

# Kernel
KT="kernel/xiaomi/surya"
if ! [ -d "$KT" ]; then
    echo "${blue}$KT not found! Cloning to now...\033[0m"
    if ! git clone -q https://github.com/HinohArata/kernel_xiaomi_surya.git -b claire kernel/xiaomi/surya; then
        echo "${red}Cloning failed! Aborting...\033[0m"
        exit 1
    fi
fi

# Firmware
FW="firmware/xiaomi/surya"
if ! [ -d "$FW" ]; then
    echo "${blue}$FW not found! Cloning to now...\033[0m"
    if ! git clone -q https://gitlab.com/HinohArata/firmware_xiaomi_surya.git firmware/xiaomi/surya; then
        echo "${red}Cloning failed! Aborting...\033[0m"
        exit 1
    fi
fi

# MiuiCamera
CAM="vendor/xiaomi/camera"
if ! [ -d "$CAM" ]; then
    echo "${blue}$CAM not found! Cloning to now...\033[0m"
    if ! git clone -q https://github.com/hinohArata/vendor_xiaomi_camera.git -b 14 vendor/xiaomi/camera; then
        echo "${red}Cloning failed! Aborting...\033[0m"
        exit 1
    fi
fi