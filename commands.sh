echo git versions:
which git
git --version

git clone git://github.com/cms-opendata-workshop/workshop2021-poetpayload-cloud.git
cd workshop2021-poetpayload-cloud/PhysObjectExtractor
scram b

cmsRun python/poet_cfg_cloud.py True > poet.out
mv poet.out /mnt/vol
mv myoutput.root /mnt/vol/

