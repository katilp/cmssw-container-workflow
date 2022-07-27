echo git versions:
which git
git --version

echo PATH:
echo $PATH

echo pwd:
pwd

echo ls -l:
ls -l

git clone https://github.com/cms-opendata-workshop/workshop2021-poetpayload-cloud.git
cd workshop2021-poetpayload-cloud/PhysObjectExtractor
scram b

cmsRun python/poet_cfg_cloud.py True > poet.out
mkdir output
cp poet.out ouput
cp mymyoutput.root output
mv poet.out /mnt/vol
mv myoutput.root /mnt/vol/

