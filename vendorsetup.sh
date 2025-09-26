# Build with Minimal Manifest (All Recoveries)
export ALLOW_MISSING_DEPENDENCIES=true

#OF_stuffs
export FOX_BUILD_DEVICE="m35x"
export LC_ALL="C"
# Maintaining Info
export OF_MAINTAINER="Shailesh"
export FOX_MAINTAINER_PATCH_VERSION=$(date +"%Y%m%d")
export FOX_BUILD_TYPE="Unofficial_M35x"
# Magisk
export FOX_USE_SPECIFIC_MAGISK_ZIP=~/misc/Magisk-v28.1.zip
# Functions and Binaries
export FOX_REPLACE_TOOLBOX_GETPROP=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_BASH_SHELL=1
export FOX_ASH_IS_BASH=1
export FOX_USE_GREP_BINARY=1
export FOX_USE_XZ_UTILS=1
export FOX_USE_NANO_EDITOR=1
export OF_ENABLE_LPTOOLS=1
export FOX_DELETE_AROMAFM=1
export FOX_ENABLE_APP_MANAGER=1
export OF_FLASHLIGHT_ENABLE=1
export OF_ENABLE_USB_STORAGE=1
