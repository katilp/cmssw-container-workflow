#!/bin/sh -l

cd /home/cmsusr

set -e

echo "Setting up CMSSSW_4_2_8_lowpupatch1"
source /opt/cms/cmsset_default.sh
scramv1 project CMSSW CMSSW_4_2_8_lowpupatch1
cd CMSSW_4_2_8_lowpupatch1/src
eval `scramv1 runtime -sh`
echo "CMSSW_4_2_8_lowpupatch1 is at your service."

pwd
ls -l