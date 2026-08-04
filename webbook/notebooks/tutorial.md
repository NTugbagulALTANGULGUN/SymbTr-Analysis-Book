# How to Use This Analysis Book

## Overview

Welcome to the **TDC Analysis Book**, an open and reproducible educational resource for computational analysis of Turkish makam music.

This book presents an end-to-end workflow for exploring symbolic Turkish makam music datasets using Python, Jupyter Notebook, and Jupyter Book. Rather than serving as a conventional programming manual, it combines theoretical background with practical implementations, enabling readers to reproduce every computational experiment presented throughout the book.

The workflow spans literature review, dataset preparation, individual composition analysis, corpus-level statistical analysis, visualization, dimensionality reduction, clustering, symbolic music processing, MusicXML generation, symbolic music generation, interactive demonstrations, and open research problems.

---

## Who Is This Book For?

This book is intended for:

- Researchers in Computational Musicology
- Music Information Retrieval (MIR) researchers
- Artificial Intelligence and Machine Learning researchers
- Graduate students
- Musicologists
- Data scientists
- Educators interested in reproducible computational research

Although familiarity with Python is beneficial, prior knowledge of Turkish makam music is not required.

---

## Learning Objectives

After completing this book, readers will be able to:

- Understand the structure of symbolic Turkish makam music datasets.
- Access and organize publicly available symbolic music datasets.
- Analyze individual symbolic music compositions.
- Perform corpus-level statistical analyses.
- Visualize musical characteristics using Python.
- Apply dimensionality reduction techniques such as Principal Component Analysis (PCA).
- Perform clustering analyses of symbolic music data.
- Convert SymbTr TXT files into MusicXML format.
- Generate symbolic melodies using Markov Chain models.
- Modify MIDI files programmatically.
- Interpret computational musicology results.
- Develop reproducible computational workflows for symbolic music analysis.

---

## Datasets Used

The analyses presented throughout this book are based on three complementary symbolic Turkish makam music datasets:

- **SymbTr v3.0**
- **Turkish Makam Symbolic Phrase Segmentation Dataset**
- **Turkish Makam Melodic Phrase Dataset**

Together, these datasets support analyses at both the composition and corpus levels while providing complementary perspectives on symbolic Turkish makam music.

The primary symbolic representation used throughout the workflow is the SymbTr TXT format. During later stages of the analysis, symbolic TXT files are converted into MusicXML to facilitate interoperability with computational music software.

---

## Book Structure

The book is organized into fifteen interconnected chapters that collectively present a complete computational workflow for symbolic Turkish makam music analysis.

1. Literature Review
2. Accessing and Preparing the SymbTr v3.0 Dataset
3. Individual Composition Analysis of the SymbTr TXT Dataset
4. Exploring and Statistically Analyzing the SymbTr TXT Collection
5. Statistical Visualizations of the SymbTr Corpus
6. Principal Component Analysis
7. Clustering Analysis
8. TXT to MusicXML Conversion
9. Markov Chain Music Generation
10. MIDI Tempo Modification
11. Related Datasets
12. Related Datasets and Statistical Analysis
13. Interactive Makam Following Demo
14. Open Research Problems
15. Contributing

Although each chapter can be studied independently, following them sequentially provides a comprehensive understanding of the complete computational workflow, from symbolic data acquisition to computational analysis and music generation.

---

## Reproducibility

Every figure, table, visualization, statistical analysis, and machine learning experiment presented in this Analysis Book can be reproduced directly from the accompanying Jupyter notebooks.

The computational environment is built entirely on open-source scientific software, including:

- Python
- NumPy
- Pandas
- SciPy
- Scikit-learn
- Matplotlib
- JupyterLab
- Jupyter Notebook
- Jupyter Book
- IPython Kernel
- music21
- mido
- lxml
- openpyxl
- requests
- tqdm

The required software dependencies are listed in the project's `requirements.txt` file, enabling readers to recreate the complete computational environment and reproduce every analysis presented throughout the book.

---

## Recommended Reading Order

For readers new to computational musicology, the following sequence is recommended:

1. Literature Review
2. Accessing and Preparing the SymbTr v3.0 Dataset
3. Individual Composition Analysis of the SymbTr TXT Dataset
4. Exploring and Statistically Analyzing the SymbTr TXT Collection
5. Statistical Visualizations of the SymbTr Corpus
6. Principal Component Analysis
7. Clustering Analysis
8. TXT to MusicXML Conversion
9. Markov Chain Music Generation
10. MIDI Tempo Modification
11. Related Datasets
12. Related Datasets and Statistical Analysis
13. Interactive Makam Following Demo
14. Open Research Problems
15. Contributing

---

## Summary

The **TDC Analysis Book** provides a complete, open, and reproducible framework for computational analysis of Turkish makam music. By integrating symbolic music processing, statistical analysis, machine learning, visualization, interactive demonstrations, and reproducible research practices, the book serves as a comprehensive resource for researchers, educators, and students working in Computational Musicology, Music Information Retrieval (MIR), and Music Artificial Intelligence.

---

## Next Chapter

The next chapter, **Literature Review**, introduces the theoretical foundations of Turkish makam music and surveys recent advances in computational musicology, Music Information Retrieval (MIR), symbolic music processing, machine learning, deep learning, and foundation models. This background establishes the conceptual framework for the computational analyses presented throughout the remainder of the TDC Analysis Book.