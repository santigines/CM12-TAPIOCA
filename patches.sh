#!/bin/bash

if [ -f ~/bin/paths-12.0.sh ]; then
	source ~/bin/paths-12.0.sh
fi

if [ "${android}" = "" ]; then
	android=~/android/system
fi

# frameworks/av : Add back missing msm7x27a to fix compilation
cherries+=(79582)

# Build : Add back support for msm7x27a Board
cherries+=(79581)

# frameworks/opt/telephony : UiccController: Query GET_SIM_STATUS when radio state is ON
cherries+=(79187)

${android}/build/tools/repopick.py -b ${cherries[@]}