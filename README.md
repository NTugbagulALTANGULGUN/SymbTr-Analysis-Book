# Turkish Delight Corpus (TDC) Analysis Book

<p align="center">
<img src="figures/workflow.png" width="850">
</p>

## A Reproducible Computational Framework for Symbolic Turkish Makam Music Analysis

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.21399104.svg)](https://doi.org/10.5281/zenodo.21399104)
[![GitHub Pages](https://img.shields.io/badge/GitHub-Pages-blue)](https://YOUR_GITHUB_PAGES_URL)
![License](https://img.shields.io/github/license/YOUR_USERNAME/TDC-Analysis-Book)
[![Jupyter Book](https://img.shields.io/badge/Jupyter-Book-orange.svg)](https://jupyterbook.org/)
![Python](https://img.shields.io/badge/Python-3.11-blue.svg)
![Status](https://img.shields.io/badge/Status-Active-success)
![Open Science](https://img.shields.io/badge/Open-Science-brightgreen)
![Reproducible](https://img.shields.io/badge/Reproducible-Yes-success)

---

## Overview

The **Turkish Delight Corpus (TDC) Analysis Book** is an open-source Jupyter Book that provides a complete and reproducible computational workflow for symbolic Turkish makam music analysis.

Rather than focusing on a single corpus, the project integrates multiple publicly available symbolic Turkish makam music datasets into a unified computational framework. The notebooks demonstrate dataset preparation, corpus exploration, statistical analysis, visualization, machine learning, symbolic music processing, and computational musicology techniques using reproducible Python workflows.

The primary goal of this project is to support open science by providing researchers, educators, and students with a comprehensive educational resource for Turkish makam music analysis.

---

## Target Audience

This handbook is intended for researchers and students working in

- Music Information Retrieval (MIR)
- Computational Musicology
- Symbolic Music Processing
- Artificial Intelligence
- Machine Learning
- Data Science
- Digital Humanities

---

## Quick Links

- 📖 Interactive Jupyter Book
- 💻 GitHub Repository
- 📦 Zenodo Archive
- 📚 Documentation

---

## Installation

Clone the repository

```bash
git clone https://github.com/YOUR_USERNAME/TDC-Analysis-Book.git
cd TDC-Analysis-Book
```

Install the required packages

```bash
pip install -r requirements.txt
```

Build the Jupyter Book

```bash
jupyter-book build .
```

Serve locally

```bash
jupyter-book serve _build/html
```

---

## Features

- Fully reproducible computational workflow
- Fifteen executable Jupyter notebooks
- Automatic dataset downloading from Zenodo
- Symbolic TXT corpus preparation
- Statistical corpus analysis
- Exploratory data visualization
- Principal Component Analysis (PCA)
- Clustering analysis
- TXT to MusicXML conversion
- Markov-chain symbolic music generation
- MIDI tempo modification
- Comparative analysis of multiple Turkish makam music datasets
- Interactive symbolic music demonstration
- Open research problems
- Educational tutorials

---

## Included Public Datasets

The book currently integrates the following public datasets.

| Dataset | Description |
|----------|-------------|
| SymbTr v3.0 | Complete symbolic Turkish makam music corpus |
| Turkish Makam Symbolic Phrase Segmentation Dataset | Phrase-level annotations |
| Turkish Makam Melodic Phrase Dataset | Expert melodic phrase annotations |

---

## Notebook Structure

| Notebook | Description |
|-----------|-------------|
| 01 | Literature Review |
| 02 | Accessing and Preparing the SymbTr v3.0 Dataset |
| 03 | Individual Composition Analysis of the SymbTr TXT Dataset |
| 04 | Exploring and Statistically Analyzing the SymbTr TXT Collection |
| 05 | Statistical Visualizations of the SymbTr Corpus |
| 06 | Principal Component Analysis (PCA) |
| 07 | Clustering Analysis |
| 08 | TXT to MusicXML Conversion |
| 09 | Markov Chain Music Generation |
| 10 | MIDI Tempo Modification |
| 11 | Related Datasets |
| 12 | Related Datasets and Statistical Analysis |
| 13 | Interactive Makam Following Demo |
| 14 | Open Research Problems |
| 15 | Contributing |

---

## Computational Analyses

The notebooks demonstrate reproducible computational workflows including

- Symbolic music preprocessing
- Corpus exploration
- Statistical analysis
- Exploratory visualization
- Principal Component Analysis (PCA)
- Clustering
- Comparative dataset analysis
- Symbolic music representation
- TXT to MusicXML conversion
- Markov-chain symbolic music generation
- MIDI processing
- Interactive symbolic music exploration

---

## Technologies

- Python
- Jupyter Notebook
- Jupyter Book
- NumPy
- pandas
- Matplotlib
- Scikit-learn
- MusicXML
- MIDI
- MyST Markdown

---

## Project Structure

```
TDC-Analysis-Book/
│
├── notebooks/
├── data/
├── figures/
├── references/
├── tutorial.md
├── landing.md
├── README.md
├── LICENSE
├── CITATION.cff
├── _config.yml
└── _toc.yml
```

---

## Reproducibility

All analyses presented in this handbook are fully reproducible.

The notebooks automatically

- download publicly available datasets,
- prepare symbolic music collections,
- perform statistical analyses,
- generate publication-quality visualizations,
- reproduce computational experiments, and
- provide reusable workflows for future computational musicology and Music Information Retrieval (MIR) research.

---

## Citation

If you use this handbook in your research, please cite both the original datasets and the software. Citation information is provided in the `CITATION.cff` file and through the Zenodo DOI.

---

## License

This project is distributed for educational and research purposes.

Please consult the original licenses of the integrated public datasets before redistributing dataset content.

---

## Acknowledgements

This project integrates publicly available symbolic Turkish makam music datasets developed by the Music Technology Group (MTG), Universitat Pompeu Fabra, together with resources contributed by the broader Turkish makam music research community.

The author gratefully acknowledges the creators and maintainers of these datasets for supporting open and reproducible computational research.

---

⭐ If this project contributes to your research, please consider starring the repository and citing the software.