#!/bin/bash
export TWRP_MANIFEST="https://github.com/PitchBlackRecoveryProject/manifest_pb"
export TWRP_BRANCH="android-11.0"
export DT_LINK="https://github.com/ShazuxD/device_realme_RMX1801-twrp-12.1"
export DT_BRANCH="11_12.1"
export DEVICE="RMX1801"
export OEM="realme"
export TARGET="recoveryimage"
export MAKEFILE="omni_RMX1801"
export OUTPUT="P*.zip"
#export KERNEL="" if exist
#export KERNEL_PATH="" if exist

mkdir -p /tmp/ci

