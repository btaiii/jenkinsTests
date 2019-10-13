#!/bin/sh
# use bash shell
echo hello
cd /home/branch/Dropbox/EE382V_AdvancedProgrammingTools/jenkins/affinityJenkins
pwd
# python3 -m nose --with-coverage --cover-package=affinityJenkins --cover-inclusive > testoutput 2>&1 
python3 -m nose --with-coverage --cover-package=affinityJenkins --cover-inclusive
