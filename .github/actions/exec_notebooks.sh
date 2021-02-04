#!/bin/bash
git clone https://github.com/materialdigital/pyiron-workflow-damask
cd pyiron-workflow-damask/
i=0;
for notebook in $(ls *.ipynb); do 
    papermill ${notebook} ${notebook%.*}-out.${notebook##*.} -k "python3" || i=$((i+1));
done;

# push error to next level
if [ $i -gt 0 ]; then
    exit 1;
fi;
