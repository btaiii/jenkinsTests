#!/bin/sh
# use bash shell
cd /home/branch/Dropbox/EE382V_AdvancedProgrammingTools/jenkins/affinityJenkins
python3 -m nose --with-coverage --cover-package=affinityJenkins --cover-inclusive > testoutput 2>&1 
