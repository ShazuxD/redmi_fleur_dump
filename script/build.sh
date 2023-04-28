#!/bin/bash

# Source Configs
source $CONFIG

# Change to the Source Directry

cd /tmp/ci/external
rm -rf noto-fonts
git clone git clone https://android.googlesource.com/platform/external/noto-fonts -b android-s-beta-5

cd /tmp/ci/platform/external
rm -rf noto-fonts
git clone https://android.googlesource.com/platform/external/noto-fonts -b android-s-beta-5

cd /tmp/ci
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
