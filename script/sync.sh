#!/bin/bash

# Source Vars
source $CONFIG

cd /tmp/ci
pwd
ls
repo init $TWRP_MANIFEST -b $TWRP_BRANCH --depth=1
repo sync || { echo "ERROR: Failed to Sync TWRP Sources!" && exit 1; }
ls

# Clone Trees
git clone $DT_LINK -b $DT_BRANCH device/$OEM/$DEVICE || { echo "ERROR: Failed to Clone the Device Trees!" && exit 1; }

# Clone the Kernel Sources
# only if the Kernel Source is Specified in the Config
[ ! -z "$KERNEL_SOURCE" ] && git clone --depth=1 --single-branch $KERNEL $KERNEL_PATH

# Exit
exit 0
