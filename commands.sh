echo git versions:
which git
git --version

echo PATH:
echo $PATH

echo pwd:
pwd

echo ls -l:
ls -l

git clone -b odws2022-ttbaljets-prod https://github.com/cms-opendata-analyses/PhysObjectExtractorTool.git
cd PhysObjectExtractorTool/PhysObjectExtractor
scram b

cmsRun python/poet_cfg.py True > poet.out
mkdir output
cp poet.out ouput
cp myoutput.root output
# if statement only needed for the docker workflow which does not use /mnt/vol
if [ -d /mnt/vol ]; then
  mv poet.out /mnt/vol
  mv myoutput.root /mnt/vol/
fi


