#!/bin/sh -l

pwd
ls -l
touch container_output.txt
echo 'ls -l /home:'
ls -l /home
echo 'ls -l /mountedvolume:'
ls -l /mountedvolume

# copy output file to the shared volume, changing owner needed
sudo chown -R cmsusr /mountedvolume/
chmod 755 /mountedvolume/
mkdir /mountedvolume/outputs
cp container_output.txt /mountedvolume/outputs