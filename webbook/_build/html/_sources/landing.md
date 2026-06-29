# Home

Welcome to **Turkish Delight Corpus (TDC): A Repository for Turkish Makam Music Research and Computational Methods**.

The **Turkish Delight Corpus (TDC)** is an open and interactive Jupyter Book that provides reproducible computational methods, educational resources, and analytical workflows for Turkish makam music research.

Rather than focusing on a single corpus, the project integrates multiple public symbolic Turkish makam music datasets within a unified computational framework. Using Python and Jupyter notebooks, readers can perform exploratory data analysis, statistical analysis, visualization, dimensionality reduction, clustering, and comparative analysis through fully reproducible workflows.

The project integrates **three complementary public datasets** representing different levels of symbolic Turkish makam music. **SymbTr v3.0** serves as the primary score-level corpus, while the **Turkish Makam Symbolic Phrase Dataset** and the **Turkish Makam Melodic Phrase Dataset** provide phrase-level representations for comparative computational analysis.

```{include} _includes/symbtr_stats.md
```

The SymbTr collection contains symbolic scores in **MusicXML**, **MIDI**, **PDF**, **TXT**, and **MU2** formats, making it suitable for computational musicology, music information retrieval (MIR), symbolic music analysis, and machine learning.

---

## Public Turkish Makam Music Datasets

{bdg-primary}`3 Public Datasets`
{bdg-success}`Reproducible`
{bdg-info}`Open Access`

The Turkish Delight Corpus integrates three complementary public datasets representing different levels of symbolic Turkish makam music.

| Dataset                                   | Description                                                                                                                                                                                                         | Official Resource                                                     |
| ----------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------- |
| **SymbTr v3.0**                           | Large-scale symbolic corpus containing complete Turkish makam music scores. It serves as the primary dataset for statistical analysis, visualization, Principal Component Analysis (PCA), and clustering.           | {bdg-link-primary}`Zenodo <https://doi.org/10.5281/zenodo.15470412>`  |
| **Turkish Makam Symbolic Phrase Dataset** | Phrase-level symbolic dataset containing manually annotated musical phrases extracted from Turkish makam music. It is used to demonstrate phrase-level symbolic analysis and complement score-level investigations. | {bdg-link-primary}`UPF CompMusic <http://compmusic.upf.edu/node/237>` |
| **Turkish Makam Melodic Phrase Dataset**  | Phrase-level dataset containing melodic phrase representations for comparative symbolic music analysis.                                                                                                             | {bdg-link-primary}`UPF CompMusic <http://compmusic.upf.edu/node/236>` |

Although these datasets differ in scope and granularity, the computational workflow presented throughout this project can be applied consistently across all of them. Together, they provide a reproducible framework for exploratory data analysis, statistical analysis, visualization, dimensionality reduction, clustering, and comparative symbolic music analysis.

---

## Project Workflow

The Turkish Delight Corpus demonstrates a complete end-to-end computational workflow.

```{figure} _static/workflow.png
---
width: 85%
align: center
name: tdc-workflow
---
Unified computational workflow of the Turkish Delight Corpus (TDC) for reproducible analysis of symbolic Turkish makam music datasets.
```

Each stage of the workflow is implemented as a dedicated Jupyter notebook, enabling readers to reproduce every analysis from data acquisition to comparative dataset exploration.

The workflow consists of the following stages:

* Dataset acquisition and preparation
* Dataset inspection and metadata exploration
* Exploratory Data Analysis (EDA)
* Statistical analysis
* Data visualization
* Principal Component Analysis (PCA)
* Clustering analysis
* Cluster interpretation
* Cross-dataset comparison

All analyses are fully reproducible and implemented using Python and Jupyter notebooks.

---

## Technologies

* Python
* Jupyter Notebook
* Jupyter Book
* Pandas
* NumPy
* Matplotlib
* scikit-learn

---

## Citation

### Primary Dataset

{bdg-link-primary}`SymbTr v3.0 (Zenodo DOI) <https://doi.org/10.5281/zenodo.15470412>`

Additional datasets, publications, and external resources are available in the **References** section.
