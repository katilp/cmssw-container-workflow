#!/bin/sh -l
# echo pwd `pwd`: /home/cmsusr/CMSSW_5_3_32/src
# echo $USER cmsusr
sudo chown $USER /mnt/vol

chmod +x /mnt/vol/ascript.sh
echo Check if env variables persist:
echo DUMMY_SET_IN_SCRIPT: $DUMMY_SET_IN_SCRIPT
echo Source a script
source /mnt/vol/ascript.sh

echo Script sourced
echo DUMMY_SET_IN_SCRIPT: $DUMMY_SET_IN_SCRIPT
