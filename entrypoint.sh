#!/bin/bash
set  -e

echo "Setting up ${CMSSW_VERSION}"
source /opt/cms/cmsset_default.sh
scramv1 project CMSSW ${CMSSW_VERSION}
cd ${CMSSW_VERSION}/src
eval `scramv1 runtime -sh`
echo "CMSSW should now be available."

#if [[ ${SCRAM_ARCH:3:1} == 5 ]]
#then
echo "------------------------------------------- in the local entrypoint script ---------------------------------------------"
echo From entrypoint before new settings:
echo UPDATE_PATH: $UPDATE_PATH
echo LD_LIBRARY_PATH: $LD_LIBRARY_PATH
echo PATH: $PATH
export LD_LIBRARY_PATH=${UPDATE_PATH}/lib:${UPDATE_PATH}/lib64:${LD_LIBRARY_PATH}
export PATH=${UPDATE_PATH}/bin:${PATH}

echo LD_LIBRARY_PATH: $LD_LIBRARY_PATH
echo PATH: $PATH

echo "-----------------------------------------------------------------------------------------------------------------------"
#fi

exec "$@"
