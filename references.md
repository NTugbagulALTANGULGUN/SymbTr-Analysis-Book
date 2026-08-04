# Resources and References

This page summarizes the primary resources, datasets, software, and references used throughout the **TDC Analysis Book**. The project aims to provide a transparent and reproducible computational workflow for Turkish makam music research by integrating symbolic music processing, statistical analysis, visualization, and artificial intelligence techniques.

---

# Source Code

## GitHub Repository

The complete source code, notebooks, documentation, and reproducible workflow are available in the project's GitHub repository.

> **GitHub:**  
> https://github.com/NTugbagulALTANGULGUN/TDC-Analysis-Book

---

# Software

## Turkish Delight Corpus (TDC)

The Turkish Delight Corpus (TDC) provides an open-source computational framework for symbolic Turkish makam music research. The project integrates data acquisition, symbolic music processing, statistical analysis, visualization, dimensionality reduction, clustering, MusicXML conversion, and artificial intelligence applications within a reproducible Jupyter Book environment.

**Software DOI**

https://doi.org/10.5281/zenodo.21399104

---

# Primary Dataset

## SymbTr v3.0 Turkish Makam Music Dataset

The analyses presented throughout this Analysis Book are primarily based on the **SymbTr v3.0** dataset.

**Dataset DOI**

https://doi.org/10.5281/zenodo.15470412

---

## Data Formats Used in This Analysis Book

Unlike earlier versions of this project, the computational workflow presented in this Analysis Book does **not** rely on the fixed-length CSV representation of the dataset.

Instead, the analyses are based primarily on the following symbolic formats:

- **TXT** – primary symbolic representation used throughout the analyses.
- **MusicXML** – generated automatically from TXT files for interoperability with symbolic music software.
- **PDF** – original musical scores used for visual inspection.
- **MIDI** – symbolic performance representation.
- **MU2** – native Turkish notation format distributed with SymbTr.

TXT files constitute the primary source of symbolic information throughout the computational workflow. During preprocessing, these files are converted into MusicXML to support symbolic music analysis and interoperability with modern music analysis libraries.

---

# Related Turkish Makam Music Resources

## SymbTr Project

The SymbTr project provides one of the largest publicly available symbolic collections of Turkish makam music and constitutes the foundation of many computational musicology and Music Information Retrieval (MIR) studies.

## CompMusic Project

The CompMusic project develops computational methods, datasets, and software tools for the analysis of diverse musical cultures, including Turkish makam music.

---

# Documentation

The TDC Analysis Book presents a complete end-to-end computational workflow consisting of:

- Literature Review
- Accessing and Preparing the SymbTr v3.0 Dataset
- Individual Composition Analysis
- Exploring the SymbTr TXT Collection
- Statistical Visualizations
- Principal Component Analysis (PCA)
- Clustering Analysis
- TXT to MusicXML Conversion
- Markov Chain Music Generation
- MIDI Tempo Modification
- Related Datasets
- Statistical Analysis of Related Datasets
- Interactive Makam Following Demo
- Open Research Problems
- Contributing

---

# Software Environment

The analyses were developed using open-source scientific software, including:

- Python
- Jupyter Notebook
- Jupyter Book
- Pandas
- NumPy
- SciPy
- Matplotlib
- Scikit-learn
- music21
- lxml

All computational experiments are designed to be fully reproducible.

---

# Citation

If you use this project in your research, please cite both the software and the SymbTr dataset.

## Software Citation

Altan Gülgün, N. Tuğbagül, & Serra, X. (2026).

*Turkish Delight Corpus (TDC): A Reproducible Computational Framework for Symbolic Turkish Makam Music Research.*

Zenodo.

https://doi.org/10.5281/zenodo.21399104

---

## Dataset Citation

The computational analyses presented throughout this Analysis Book are based on the SymbTr v3.0 Turkish Makam Music Dataset.

Dataset DOI:

https://doi.org/10.5281/zenodo.15470412

---

# Reproducibility

One of the primary objectives of the TDC Analysis Book is to promote reproducible computational research. All notebooks, figures, statistical analyses, preprocessing pipelines, and visualizations are designed to be executable from the original symbolic datasets using openly available software.

---

# Bibliography

This section lists the publications cited throughout the **TDC Analysis Book**. All citations are managed automatically using the shared `references.bib` database and rendered by MyST Markdown and Jupyter Book.

```{bibliography}
:style: unsrt
```