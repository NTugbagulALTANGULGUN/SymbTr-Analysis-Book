# Turkish Delight Corpus (TDC) Analysis Book

<p align="center">
  <img src="webbook/_static/workflow.png" width="900">
</p>

## A Reproducible Computational Framework for Symbolic Turkish Makam Music Research

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.21399104.svg)](https://doi.org/10.5281/zenodo.21399104)
[![GitHub Pages](https://img.shields.io/badge/GitHub-Pages-blue)](https://ntugbagulaltangulgun.github.io/SymbTr-Analysis-Book/)
![GitHub release](https://img.shields.io/github/v/release/NTugbagulALTANGULGUN/SymbTr-Analysis-Book)
![License](https://img.shields.io/github/license/NTugbagulALTANGULGUN/SymbTr-Analysis-Book)
[![Jupyter Book](https://img.shields.io/badge/Jupyter-Book-orange.svg)](https://jupyterbook.org/)
![Python](https://img.shields.io/badge/Python-3.11-blue.svg)
![Status](https://img.shields.io/badge/Status-Active-success)
![Open Science](https://img.shields.io/badge/Open-Science-brightgreen)
![Reproducible](https://img.shields.io/badge/Reproducible-Yes-success)

---

# Overview

The **Turkish Delight Corpus (TDC) Analysis Book** is an open-source, interactive, and fully reproducible Jupyter Book designed for computational analysis of symbolic Turkish makam music.

The project provides a complete educational and research-oriented workflow covering literature review, dataset preparation, corpus exploration, statistical analysis, visualization, dimensionality reduction, clustering, and comparative analysis using publicly available symbolic Turkish makam music datasets.

Rather than presenting only results, every analysis is fully reproducible through executable Jupyter notebooks, making the project suitable for education, research, and computational musicology studies.

---

# Quick Links

📖 **Interactive Book**

https://ntugbagulaltangulgun.github.io/SymbTr-Analysis-Book/

💻 **GitHub Repository**

https://github.com/NTugbagulALTANGULGUN/SymbTr-Analysis-Book

📦 **Zenodo Archive**

https://doi.org/10.5281/zenodo.21399104

---

# Features

- Fully reproducible computational workflow
- Interactive Jupyter Book
- Symbolic Turkish makam music analysis
- MusicXML and TXT corpus processing
- Metadata extraction
- Statistical analysis
- Interactive visualizations
- Principal Component Analysis (PCA)
- K-Means clustering
- Comparative dataset analysis
- Publication-quality figures
- Open Science
- Educational notebook collection

---

# Repository Structure

```text
TDC-Analysis-Book/
│
├── webbook/
│   ├── _config.yml
│   ├── _toc.yml
│   ├── landing.md
│   ├── introduction.md
│   ├── notebooks/
│   ├── _static/
│   └── references.bib
│
├── data/
│   ├── raw/
│   │   ├── symbtr_corpus.csv
│   │   └── README.md
│   │
│   ├── processed/
│   ├── interim/
│   └── external/
│
├── symbtr_v3/
│
├── tutorial/
│
├── README.md
├── LICENSE
├── requirements.txt
├── environment.yml
└── references.bib
```

---

# Project Organization

The repository is organized into four main components.

### webbook/

Contains the complete Jupyter Book source including notebooks, configuration files, figures, and documentation.

### data/

Stores datasets used throughout the analyses.

- **raw/** contains original datasets without modification.
- **processed/** contains datasets generated during notebook execution.
- **interim/** contains temporary files produced during preprocessing.
- **external/** stores downloaded external resources.

### symbtr_v3/

Contains the original SymbTr v3.0 corpus, including MusicXML, TXT, MU2, MIDI, PDF, and metadata files used throughout the analyses.

### tutorial/

Contains supplementary tutorials and educational materials related to the project.

---

# Computational Workflow

1. Literature Review

2. Dataset Preparation

3. TXT Corpus Analysis

4. MusicXML Processing

5. Metadata Extraction

6. Statistical Analysis

7. Visualization

8. Principal Component Analysis

9. Clustering

10. Comparative Dataset Analysis

11. Open Research Problems

12. Interactive Demonstrations

---

# Public Datasets

This project integrates publicly available symbolic Turkish makam music datasets.

- SymbTr v3.0
- Turkish Makam Symbolic Phrase Dataset
- Turkish Makam Melodic Phrase Dataset

---

# Technology Stack

- Python
- Jupyter Book
- NumPy
- pandas
- SciPy
- scikit-learn
- matplotlib
- Plotly
- music21
- lxml
- Git
- GitHub Pages
- Zenodo
- MyST Markdown

---

# Installation

Clone the repository

```bash
git clone https://github.com/NTugbagulALTANGULGUN/SymbTr-Analysis-Book.git
```

Install dependencies

```bash
pip install -r requirements.txt
```

---

# Build the Book

```bash
jupyter-book build webbook
```

Clean previous builds

```bash
jupyter-book clean webbook
```

---

# Reproducibility

All analyses presented in this project are fully reproducible.

Running the notebooks sequentially reproduces every figure, statistical analysis, visualization, dimensionality reduction result, and clustering experiment without requiring manual preprocessing.

---

# Intended Audience

This project is intended for

- Music Information Retrieval (MIR) researchers
- Computational Musicologists
- Machine Learning researchers
- Data Scientists
- Graduate students
- Digital Humanities researchers
- Educators

---

# Citation

If you use this project, please cite both the software and the original datasets.

Software DOI

https://doi.org/10.5281/zenodo.21399104

---

# License

This repository is distributed under the MIT License.

Please also respect the licenses of the original datasets.

---

# Acknowledgements

The Turkish Delight Corpus (TDC) Analysis Book integrates publicly available symbolic Turkish makam music datasets developed by the Music Technology Group (MTG), Universitat Pompeu Fabra, together with resources contributed by the SymbTr community.

The author gratefully acknowledges all researchers who have contributed to Turkish makam music research and open computational musicology resources.

---

⭐ If this project contributes to your research, please consider starring the repository and citing the Zenodo software DOI.