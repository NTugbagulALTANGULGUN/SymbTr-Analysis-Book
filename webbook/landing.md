# Welcome

Welcome to **Turkish Delight Corpus (TDC): A Repository for Turkish Makam Music Research and Computational Methods**.

The **Turkish Delight Corpus (TDC)** is an open and interactive Jupyter Book that provides reproducible computational methods, educational resources, and analytical workflows for Turkish makam music research.

Rather than focusing on a single corpus, the project integrates multiple public symbolic Turkish makam music datasets within a unified computational framework. Using Python and Jupyter notebooks, readers can perform exploratory data analysis, statistical analysis, visualization, dimensionality reduction, clustering, and comparative analysis through fully reproducible workflows.

The project integrates **three complementary public datasets** representing different levels of symbolic Turkish makam music. **SymbTr v3.0** serves as the primary score-level corpus, while the **Turkish Makam Symbolic Phrase Dataset** and the **Turkish Makam Melodic Phrase Dataset** provide phrase-level representations for comparative computational analysis.

```{include} _includes/symbtr_stats.md
```

## Who is this handbook for?

This handbook is intended for researchers, educators, and students interested in computational approaches to Turkish makam music.

It is particularly suitable for:

- 🎓 Graduate students studying Music Information Retrieval (MIR), computational musicology, and machine learning
- 🔬 Researchers working on symbolic music analysis, digital humanities, and artificial intelligence
- 🎼 Musicologists interested in reproducible computational methods
- 💻 Data scientists exploring symbolic music datasets and machine learning workflows
- 🌍 Educators seeking open educational resources for computational music analysis

---

## What you will learn

By following this handbook, readers will learn how to:

- Acquire and organize public symbolic Turkish makam music datasets
- Explore musical metadata and dataset characteristics
- Perform exploratory data analysis (EDA)
- Compute descriptive statistics
- Visualize symbolic music collections
- Apply Principal Component Analysis (PCA)
- Perform clustering analysis
- Compare multiple symbolic music datasets within a unified computational framework
- Develop fully reproducible computational musicology workflows

Together, these learning objectives are supported by three complementary public symbolic music datasets that span multiple levels of musical representation. The following sections introduce these datasets and demonstrate how they are integrated into a unified computational workflow.

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

## How to use this handbook

The handbook is organized as a sequence of independent but interconnected Jupyter notebooks.

For readers new to computational music analysis, the recommended reading order is:

1. Dataset acquisition
2. Dataset overview
3. Statistical analysis
4. Data visualization
5. Principal Component Analysis (PCA)
6. Clustering analysis
7. Cluster interpretation
8. Related symbolic music datasets
9. Literature review
10. Open research problems

Readers already familiar with these topics may use the sidebar to navigate directly to individual chapters.

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

The computational analyses presented throughout this handbook are implemented entirely using open-source scientific computing tools.

- Python
- Jupyter Notebook
- Jupyter Book
- Pandas
- NumPy
- Matplotlib
- scikit-learn


---

## Citation

If you use the Turkish Delight Corpus (TDC), the accompanying Jupyter notebooks, or any part of the computational workflow presented in this handbook, please cite the primary dataset and acknowledge this handbook in your publications.

Additional datasets, software resources, and bibliographic references are available in the **Resources and References** section.

### Primary Dataset

{bdg-link-primary}`SymbTr v3.0 (Zenodo DOI) <https://doi.org/10.5281/zenodo.15470412>`

Karaosmanoğlu, M. K. (2025). *Turkish Maqam Music Symbolic Data (SymbTr v3.0).* Zenodo. https://doi.org/10.5281/zenodo.15470412

### Handbook

Altan Gülgün, N. T. (2026). *Turkish Delight Corpus: An Open Handbook for Computational Analysis of Turkish Makam Music.* Jupyter Book.

### BibTeX

```bibtex
@misc{tdc2026,
  author = {Altan Gülgün, N. Tuğbagül},
  title = {Turkish Delight Corpus: An Open Handbook for Computational Analysis of Turkish Makam Music},
  year = {2026},
  howpublished = {Jupyter Book},
  note = {\url{https://ntugbagulaltangulgun.github.io/SymbTr-Analysis-Book/}}
}
```

Additional datasets, publications, and related resources are available in the **Resources and References** section.