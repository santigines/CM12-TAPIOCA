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
#cherries+=(79581)

# build: Add option to disable block-based ota
cherries+=(78849)

# init: change permission for lowmemorykiller back to 664
cherries+=(82787)

# Camera2: Remove settings preferences only once
cherries+=(81019)

# Allow low RAM devices have multiple users
cherries+=(78423)

# Fix memory leak in system_server when screen on/off
cherries+=(82572)

${android}/build/tools/repopick.py -b ${cherries[@]}
