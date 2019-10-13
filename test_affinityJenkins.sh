#!/bin/sh
# note: Jenkins uses sh shell
echo Current directory:
cd /home/branch/Dropbox/EE382V_AdvancedProgrammingTools/jenkins/affinityJenkins
pwd
# python3 -m nose --with-coverage --cover-package=affinityJenkins --cover-inclusive > testoutput 2>&1 
# python3 -m nose --with-coverage --cover-package=affinityJenkins --cover-inclusive
PYTHONPATH=''
python3 -m nose --with-xunit --all-modules --traverse-namespace --with-coverage --cover-package=affinityJenkins --cover-inclusive &> testoutput
python3 -m coverage xml --include=affinityJenkins
# can use parseable instead of colorized (works best with EMACS?)
pylint -f colorized -d I0011,R0801 affinityJenkins | tee pylint.out