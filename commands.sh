#!/bin/sh -l

pwd
ls -l
touch container_output.txt
echo 'ls -l /home/cmsusr:'
ls -l /home/cmsusr
echo 'ls -l /home/runner/work/cmssw-container-workflow/cmssw-container-workflow:'
ls -l /home/runner/work/cmssw-container-workflow/cmssw-container-workflow

# copy output file to the shared volume, changing owner needed
sudo chown -R cmsusr /home/runner/work/cmssw-container-workflow/cmssw-container-workflow/
chmod 755 /home/runner/work/cmssw-container-workflow/cmssw-container-workflow/
mkdir /home/runner/work/cmssw-container-workflow/cmssw-container-workflow/outputs
cp container_output.txt /home/runner/work/cmssw-container-workflow/cmssw-container-workflow/outputs