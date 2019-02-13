#!/bin/bash

dtiinit=`jq -r '.dtiinit' config.json`
mkdir mask

nii=$(jq -r '.files.brainMask' $dtiinit/dt6.json)

cp -v ${nii} ./mask/mask.nii.gz;
