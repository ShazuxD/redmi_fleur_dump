#!/bin/bash
export TWRP_MANIFEST="https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git"
export TWRP_BRANCH="twrp-11"
export DT_LINK="https://github.com/ShazuxD/device_realme_RMX1801-twrp-12.1"
export DT_BRANCH="11"
export DEVICE="RMX1801"
export OEM="realme"
export TARGET="recoveryimage"
export MAKEFILE="twrp_RMX1801"
export OUTPUT="rec*.img"
#export KERNEL="" if exist
#export KERNEL_PATH="" if exist

mkdir -p /tmp/ci

