#!/bin/bash

dtiinit=`jq -r '.dtiinit' config.json`
mkdir mask

nii=${dtiinit}/dti/bin/brainMask.nii.gz;

cp -v ${nii} ./mask/mask.nii.gz;
