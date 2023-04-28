#!/bin/bash

# Source Configs
source $CONFIG

# Change to the Source Directry

cd /tmp/ci/external/noto-fonts/cjk
wget https://github.com/ShazuxD/extras/raw/main/NotoSansEthiopic-Regular-VF.ttf
wget https://github.com/ShazuxD/extras/raw/main/NotoSansEthiopic-Regular.ttf
cd /tmp/ci/external/noto-fonts/other
wget https://github.com/ShazuxD/extras/raw/main/NotoSansEthiopic-Regular-VF.ttf
wget https://github.com/ShazuxD/extras/raw/main/NotoSansEthiopic-Regular.ttf
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
