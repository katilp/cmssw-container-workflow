#!/bin/sh -l
# echo pwd `pwd`: /home/cmsusr/CMSSW_5_3_32/src
# echo $USER cmsusr
echo pwd `pwd`
sudo chown $USER /mnt/vol

echo git versions:
which git
git --version
echo openssl versions:
which openssl 
openssl version || echo ignore exit code

echo PATH before sourcing entrypoint: $PATH
echo LD_LIBRARY_PATH before: $LD_LIBRARY_PATH
echo Source a script
source /mnt/vol/entrypoint.sh

echo Script sourced
echo PATH after sourcing entrypoint: $PATH
echo LD_LIBRARY_PATH after: $LD_LIBRARY_PATH

echo git versions:
which git
git --version
echo openssl versions:
which openssl 
openssl version || echo ignore exit code

