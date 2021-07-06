#!/bin/bash
set  -e

#echo "Setting up ${CMSSW_VERSION}"
#source /opt/cms/cmsset_default.sh
#scramv1 project CMSSW ${CMSSW_VERSION}
#cd ${CMSSW_VERSION}/src
#eval `scramv1 runtime -sh`
#echo "CMSSW should now be available."

#if [[ ${SCRAM_ARCH:3:1} == 5 ]]
#then
export DUMMY_SET_IN_SCRIPT=NEWVALUE

echo Script set the variable DUMMY_SET_IN_SCRIPT to $DUMMY_SET_IN_SCRIPT

export LD_LIBRARY_PATH=${UPDATE_PATH}/lib:${LD_LIBRARY_PATH}
export PATH=${UPDATE_PATH}/bin:${PATH}
#fi

exec "$@"
