<h1 align="center">Convert brainmask from dtiInit</h1>

<p align="center">
  A <code>neuro/mask</code> dataset holding the DWI brain mask of a vistasoft dtiInit output.
</p>

<p align="center">
  <a href="https://github.com/brainlife/abcd-spec"><img src="https://img.shields.io/badge/ABCD_Spec-v1.1-green.svg" alt="ABCD Spec v1.1"></a>
  <a href="https://doi.org/10.25663/brainlife.app.162"><img src="https://img.shields.io/badge/Brainlife-brainlife.app.162-blue.svg" alt="Run on brainlife.io"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-lightgrey.svg" alt="MIT license"></a>
</p>

> **This branch, `v1.0.0`, is the brainlife.io App Convert brainmask from dtiinit** ([doi:10.25663/brainlife.app.162](https://doi.org/10.25663/brainlife.app.162)).

## At a glance

<!-- brainlife-app:begin (generated from the App manifest; edit the manifest, not this block) -->

> **Utility that copies the brain mask from a vistasoft dtiInit output (dti/bin/brainMask.nii.gz) into a mask datatype.**

Copies dtiInit's DWI brain mask to mask/mask.nii.gz so it can be used by Apps that take a mask input. Temporary converter until dtiInit outputs a mask datatype directly. Needs a dtiInit output.

| | |
|---|---|
| **Inputs** | `neuro/dtiinit` |
| **Outputs** | `neuro/mask` |
| **Container** | `brainlife/fsl:5.0.9` |
| **Resources** | 1 CPUs · 0.17 h walltime |
| **Run it** | [doi.org/10.25663/brainlife.app.162](https://doi.org/10.25663/brainlife.app.162) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `dtiinit` | `neuro/dtiinit` | yes | Top directory of a dtiInit output; must contain dti/bin/brainMask.nii.gz. |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `mask` | `neuro/mask` | Brain mask of the DWI from the dtiInit output (mask.nii.gz). |

<!-- brainlife-app:end -->

## Running the App

### On brainlife.io

Open the App at [doi.org/10.25663/brainlife.app.162](https://doi.org/10.25663/brainlife.app.162), choose a `neuro/dtiinit` dataset from your project and press **Execute**. The brain mask is archived as a new `neuro/mask` dataset tagged `dwi` and `brain`, ready for any App that takes a mask input.

This utility is a temporary solution until the dtiInit App outputs a mask datatype itself: it simply copies `dti/bin/brainMask.nii.gz` from the dtiInit output.

### Locally

You need [Singularity/Apptainer](https://apptainer.org/) and [`jq`](https://jqlang.github.io/jq/). The copy runs in the `brainlife/fsl:5.0.9` container.

1. Clone this repository and check out the App branch: `git checkout v1.0.0`.
2. Create `config.json` with the path to the top directory of the dtiInit output:

   ```json
   {
       "dtiinit": "testdata/dtiinit/"
   }
   ```

3. Run the App:

   ```bash
   ./main
   ```

## Outputs

```text
mask/mask.nii.gz   the dtiInit DWI brain mask
```

## Troubleshooting

- **`mask/mask.nii.gz` is missing**: the dtiInit output must contain `dti/bin/brainMask.nii.gz`. Check the log for the `cp` error, since `main` does not stop on a missing mask.

## Citing

> [!TIP]
> If you use this App in your work, please cite the App, the software it builds on and brainlife.io (below). GitHub's **Cite this repository** button gives the App citation in APA and BibTeX.

- Convert brainmask from dtiinit. brainlife.io App. [doi:10.25663/brainlife.app.162](https://doi.org/10.25663/brainlife.app.162)
- Jenkinson et al. FSL. *NeuroImage* 62:782-790 (2012). [doi:10.1016/j.neuroimage.2011.09.015](https://doi.org/10.1016/j.neuroimage.2011.09.015)
- Hayashi S, Caron BA, Heinsfeld AS, et al. brainlife.io: a decentralized and open-source cloud platform to support neuroscience research. *Nature Methods* 21:809–813 (2024). [doi:10.1038/s41592-024-02237-2](https://doi.org/10.1038/s41592-024-02237-2)
- Avesani P, McPherson B, Hayashi S, et al. The open diffusion data derivatives, brain data upcycling via integrated publishing of derivatives and reproducible open cloud services. *Scientific Data* 6:69 (2019). [doi:10.1038/s41597-019-0073-y](https://doi.org/10.1038/s41597-019-0073-y)

## Authors

- Brad Caron

**Contributors:** Soichi Hayashi

## Funding

[![Wellcome-226486/Z/22/Z](https://img.shields.io/badge/Wellcome-226486%2FZ%2F22%2FZ-purple.svg)](https://wellcome.org/)
[![NIH-NINDS-U24NS140384](https://img.shields.io/badge/NIH_NINDS-U24NS140384-green.svg)](https://reporter.nih.gov/project-details/11261037)
[![NIH-NINDS-UM1NS132207](https://img.shields.io/badge/NIH_NINDS-UM1NS132207-green.svg)](https://reporter.nih.gov/project-details/11411328)
[![NIH-NIBIB-R01EB029272](https://img.shields.io/badge/NIH_NIBIB-R01EB029272-green.svg)](https://reporter.nih.gov/project-details/10262925)
[![NIH-NIBIB-R01EB030896](https://img.shields.io/badge/NIH_NIBIB-R01EB030896-green.svg)](https://reporter.nih.gov/project-details/10428625)
[![NIH-NIMH-R01MH126699](https://img.shields.io/badge/NIH_NIMH-R01MH126699-green.svg)](https://reporter.nih.gov/project-details/10460628)
[![NIH-NIDCD-R01DC020088](https://img.shields.io/badge/NIH_NIDCD-R01DC020088-green.svg)](https://reporter.nih.gov/project-details/11140284)
[![NSF-BCS-1734853](https://img.shields.io/badge/NSF_BCS-1734853-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1734853)
[![NSF-BCS-2203524](https://img.shields.io/badge/NSF_BCS-2203524-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2203524)
[![NSF-IIS-1636893](https://img.shields.io/badge/NSF_IIS-1636893-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1636893)
[![NSF-OAC-2148729](https://img.shields.io/badge/NSF_OAC-2148729-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2148729)
[![NSF-IIS-1912270](https://img.shields.io/badge/NSF_IIS-1912270-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1912270)
[![NSF-IIS-2148700](https://img.shields.io/badge/NSF_IIS-2148700-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2148700)
[![NSF-OAC-1916518](https://img.shields.io/badge/NSF_OAC-1916518-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1916518)

<sub>brainlife.io is publicly funded, and acknowledging that support helps keep it running. This App was developed with support from Wellcome, the U.S. National Institutes of Health (including the BRAIN Initiative BRAIN CONNECTS program: The Axonal Projectome EXchange, U24NS140384, and the Center for Mesoscale Connectomics, UM1NS132207) and the U.S. National Science Foundation.</sub>

## License

MIT; see the [`LICENSE`](https://github.com/brainlife/app-make-mask-from-dtiinit/blob/v1.0.0/LICENSE) file on the `v1.0.0` branch.
