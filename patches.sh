#!/bin/bash

if [ -f ~/bin/paths-12.0.sh ]; then
    source ~/bin/paths-12.0.sh
fi

if [ ! -d ".repo" ]; then
    echo -e "No .repo directory found.  Is this an Android build tree?"
    exit 1
fi

if [ "${android}" = "" ]; then
    android="${PWD}"
fi

# frameworks/av : Add back missing msm7x27a to fix compilation
cherries+=(79582)

# Build : Add back support for msm7x27a Board
cherries+=(79581)

# frameworks/opt/telephony : UiccController: Query GET_SIM_STATUS when radio state is ON
cherries+=(79187)

# Legacy RIL requires radio technology equals CDMA or GSM
cherries+=(79912)

# recovery: Always include ext4 stuff
cherries+=(79803)

# build: Add option to disable block-based ota
cherries+=(78849)

# reduce PB size from 2MB to 512KB
cherries+=(79102)

${android}/build/tools/repopick.py -b ${cherries[@]}
