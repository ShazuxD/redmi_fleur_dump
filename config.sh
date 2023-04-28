#!/bin/bash
export TWRP_MANIFEST="https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git"
export TWRP_BRANCH="twrp-12.1"
export DT_LINK="https://github.com/ShazuxD/Firmware-Dumper"
export DT_BRANCH="u"
export DEVICE="fleur"
export OEM="xiaomi"
export TARGET="bootimage"
export MAKEFILE="twrp_fleur"
export OUTPUT="boot.img"
export URL="https://mirror-leech-kingdom.site/0:/9%20.Other//ccache.tar.gz"
#export KERNEL="" if exist
#export KERNEL_PATH="" if exist

mkdir -p /tmp/ci

