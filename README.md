<!-- brainlife-app:begin (generated from the App manifest; edit the manifest, not this block) -->

**Utility that copies the brain mask from a vistasoft dtiInit output (dti/bin/brainMask.nii.gz) into a mask datatype.**

Copies dtiInit's DWI brain mask to mask/mask.nii.gz so it can be used by Apps that take a mask input. Temporary converter until dtiInit outputs a mask datatype directly. Needs a dtiInit output.

Run it on brainlife.io: [https://doi.org/10.25663/brainlife.app.162](https://doi.org/10.25663/brainlife.app.162)

| Input | Datatype | Required | Description |
|---|---|---|---|
| `dtiinit` | `neuro/dtiinit` | yes | Top directory of a dtiInit output; must contain dti/bin/brainMask.nii.gz. |

| Output | Datatype | Description |
|---|---|---|
| `mask` | `neuro/mask` | Brain mask of the DWI from the dtiInit output (mask.nii.gz). |

Runtime: container `brainlife/fsl:5.0.9`; 1 CPUs; 0.17 h walltime.

<!-- brainlife-app:end -->

# app-make-mask-from-dtiinit