#!/bin/bash

# Source Configs
source $CONFIG

# Change to the Source Directry
cd /tmp/ci
git fetch https://gerrit.twrp.me/android_system_vold refs/changes/40/5540/6 && git cherry-pick FETCH_HEAD
git fetch https://gerrit.twrp.me/android_bootable_recovery refs/changes/05/5405/23 && git cherry-pick FETCH_HEAD
# Prepare the Build Environment
source build/envsetup.sh
lunch ${MAKEFILE}-eng
export ALLOW_MISSING_DEPENDENCIES=true
export CCACHE_DIR=/tmp/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
ccache -M 20G
ccache -o compression=true
ccache -z

mka $TARGET

# Exitp
exit 0
