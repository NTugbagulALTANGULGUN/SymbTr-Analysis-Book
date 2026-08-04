# Welcome

Welcome to **Turkish Delight Corpus (TDC): An Analysis Book for Turkish Makam Music Research and Computational Methods**.

The **Turkish Delight Corpus (TDC) Analysis Book** is an open, interactive, and reproducible Jupyter Book for researchers, students, educators, and developers interested in **Turkish makam music**, **computational musicology**, **Music Information Retrieval (MIR)**, **symbolic music processing**, and **music artificial intelligence**.

Rather than serving only as corpus documentation, this Analysis Book presents an end-to-end computational workflow. It covers literature review, dataset access, raw SymbTr TXT preparation, composition-level analysis, corpus-level statistical analysis, visualization, dimensionality reduction, clustering, TXT-to-MusicXML conversion, Markov-chain-based music generation, MIDI tempo modification, related dataset analysis, interactive demonstrations, and open research problems.

# Who Is This Analysis Book For?

This book is intended for researchers, educators, graduate students, musicologists, and software developers interested in computational approaches to Turkish makam music.

It is particularly suitable for:

- 🎓 graduate students studying Music Information Retrieval, artificial intelligence, machine learning, and computational musicology;
- 🔬 researchers working on symbolic music analysis, digital humanities, and cultural music computing;
- 🎼 musicologists interested in reproducible computational methods;
- 💻 data scientists working with symbolic and sequential datasets;
- 🌍 educators seeking open educational resources for computational music analysis;
- 🧠 developers exploring explainable and culturally informed music AI.

---

# What You Will Learn

After completing this Analysis Book, readers will be able to:

- understand the Turkish makam music research ecosystem;
- review major datasets, methods, and research directions;
- access, extract, validate, and prepare the SymbTr v3.0 dataset;
- inspect individual compositions represented in SymbTr TXT format;
- explore and statistically analyze large symbolic music collections;
- create statistical visualizations of corpus characteristics;
- apply Principal Component Analysis;
- perform and interpret clustering analysis;
- convert SymbTr TXT files into MusicXML;
- generate symbolic musical sequences using Markov chains;
- inspect and modify MIDI tempo information;
- examine related symbolic music datasets;
- compare selected datasets statistically;
- explore an interactive makam-following workflow;
- identify open research problems in Turkish makam music analysis;
- reproduce and extend the analyses using Python.

---

# Primary Dataset

{bdg-primary}`Open Dataset`
{bdg-success}`Reproducible`
{bdg-info}`Symbolic Music`

This Analysis Book primarily uses the **SymbTr v3.0** corpus, a large publicly available symbolic dataset for Turkish makam music.

The corpus provides:

- complete symbolic musical scores;
- metadata describing makam, usul, form, composer, and title;
- TXT representations;
- MusicXML files;
- MIDI files;
- PDF scores;
- Mu2 notation files.

## Official Dataset

{bdg-link-primary}`SymbTr v3.0 on Zenodo <https://doi.org/10.5281/zenodo.15470412>`

---

# Tutorial Roadmap

The Analysis Book consists of fifteen notebooks that progressively introduce the computational analysis of Turkish makam music.

| Notebook | Topic |
|:---:|---|
| **01** | Literature Review |
| **02** | Accessing and Preparing the SymbTr v3.0 Dataset |
| **03** | Individual Composition Analysis of the SymbTr TXT Dataset |
| **04** | Exploring and Statistically Analyzing the SymbTr TXT Collection |
| **05** | Statistical Visualizations of the SymbTr Corpus |
| **06** | Principal Component Analysis |
| **07** | Clustering Analysis |
| **08** | TXT to MusicXML Conversion |
| **09** | Markov Chain Music Generation |
| **10** | MIDI Tempo Modification |
| **11** | Related Datasets |
| **12** | Related Datasets and Statistical Analysis |
| **13** | Interactive Makam Following Demo |
| **14** | Open Research Problems |
| **15** | Contributing |

---

# Recommended Learning Path

Readers who are new to symbolic music analysis are encouraged to follow the notebooks in numerical order:

1. Literature Review
2. Dataset Access and Preparation
3. Individual Composition Analysis
4. Corpus Exploration and Statistical Analysis
5. Statistical Visualization
6. Principal Component Analysis
7. Clustering Analysis
8. TXT to MusicXML Conversion
9. Markov Chain Music Generation
10. MIDI Tempo Modification
11. Related Datasets
12. Cross-Dataset Statistical Analysis
13. Interactive Makam Following Demo
14. Open Research Problems
15. Contributing

Although each notebook addresses a distinct topic, together they form a coherent and reproducible computational workflow.

---

# Computational Workflow

```{figure} webbook/notebooks/images/workflow.png
:width: 85%
:align: center
:name: tdc-workflow

Computational workflow of the Turkish Delight Corpus (TDC) Analysis Book.
```

The workflow consists of:

- literature review;
- dataset access and download;
- dataset extraction and validation;
- individual composition analysis;
- corpus exploration;
- statistical analysis;
- statistical visualization;
- Principal Component Analysis;
- clustering analysis;
- TXT-to-MusicXML conversion;
- Markov-chain-based symbolic music generation;
- MIDI tempo modification;
- related dataset exploration;
- cross-dataset statistical analysis;
- interactive makam demonstrations;
- open research problems and future directions.

All analyses are designed to be reproducible using Python, Jupyter Notebook, and Jupyter Book.

---

# Technologies

The Analysis Book uses open-source scientific computing and symbolic music technologies, including:

- Python;
- Jupyter Notebook;
- Jupyter Book;
- Pandas;
- NumPy;
- SciPy;
- Matplotlib;
- scikit-learn;
- Mido;
- MusicXML;
- XML;
- Markov chains.

---

# Reproducibility

The project is organized so that each computational step can be inspected, executed, and extended independently.

To reproduce the analyses:

1. clone or download the repository;
2. install the dependencies listed in `requirements.txt`;
3. access or prepare the datasets through the relevant notebooks;
4. execute the notebooks in their numerical order;
5. build the Jupyter Book locally when required.

The notebooks use relative project paths wherever possible to support reproducible execution across operating systems.

---

# Citation

If you use the Turkish Delight Corpus Analysis Book, its notebooks, or any part of its computational workflow, please cite both the primary dataset and the Analysis Book.

## Primary Dataset

{bdg-link-primary}`SymbTr v3.0 Zenodo DOI <https://doi.org/10.5281/zenodo.15470412>`

Karaosmanoğlu, M. K. (2025).  
*Turkish Maqam Music Symbolic Data (SymbTr v3.0).* Zenodo.  
https://doi.org/10.5281/zenodo.15470412

## Analysis Book

Altan Gülgün, N. T., & Serra, X. (2026).  
*Turkish Delight Corpus (TDC): An Analysis Book for Turkish Makam Music Research and Computational Methods.*

## BibTeX

```bibtex
@misc{tdc2026,
  author       = {Altan Gülgün, N. Tuğbagül and Serra, Xavier},
  title        = {Turkish Delight Corpus (TDC): An Analysis Book for Turkish Makam Music Research and Computational Methods},
  year         = {2026},
  howpublished = {Jupyter Book},
  note         = {Open and reproducible computational analysis book}
}
```

---

# License and Contributions

The source code, notebooks, documentation, and contribution procedures are described in the repository files:

- `LICENSE`
- `CONTRIBUTING.md`
- `CITATION.cff`

Researchers and developers are encouraged to report issues, propose improvements, contribute analyses, and extend the project with additional datasets or reproducible computational methods.
