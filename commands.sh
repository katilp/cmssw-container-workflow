#!/bin/sh -l
# echo pwd `pwd`: /home/cmsusr/CMSSW_5_3_32/src
# echo $USER cmsusr
echo pwd `pwd`
sudo chown $USER /mnt/vol

echo Check if env variables persist:
echo DUMMY_SET_IN_SCRIPT: $DUMMY_SET_IN_SCRIPT
echo Source a script
source /mnt/vol/ascript.sh

echo Script sourced
echo DUMMY_SET_IN_SCRIPT: $DUMMY_SET_IN_SCRIPT


echo git versions:
which git
git --version
echo openssl versions:
which openssl 
openssl version || echo ignore exit code

echo PATH before entrypoint $PATH

source /mnt/vol/entrypoint.sh

echo PATH after entrypoint $PATH

echo git versions:
which git
git --version
echo openssl versions:
which openssl 
openssl version || echo ignore exit code

