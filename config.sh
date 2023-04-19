#!/bin/bash
export TWRP_MANIFEST="https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git"
export TWRP_BRANCH="twrp-12.1"
export DT_LINK="https://github.com/ShazuxD/recovery-pbrb"
export DT_BRANCH="12"
export DEVICE="fleur"
export OEM="xiaomi"
export TARGET="bootimage"
export MAKEFILE="twrp_fleur"
export OUTPUT="boot.img"
#export KERNEL="" if exist
#export KERNEL_PATH="" if exist

mkdir -p /tmp/ci

