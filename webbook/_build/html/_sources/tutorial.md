# Computational Analysis of Turkish Makam Music Datasets: A Practical Tutorial

## Overview

This tutorial presents a reproducible computational workflow for analyzing symbolic Turkish makam music datasets using Python and Jupyter notebooks.

Rather than focusing on a single corpus, the tutorial demonstrates a unified analysis framework applicable to multiple Turkish makam music datasets. Three publicly available Turkish makam music datasets are used throughout the tutorial to demonstrate how a unified computational workflow can be applied consistently across different symbolic music collections with varying structures and levels of granularity.

Throughout this tutorial, readers will learn how to

* acquire and prepare symbolic music datasets,
* inspect dataset structures,
* perform exploratory statistical analyses,
* visualize musical characteristics,
* apply dimensionality reduction techniques,
* perform clustering analyses, and
* compare multiple Turkish makam music datasets within a common analytical framework.

All analyses are fully reproducible and can be executed directly from the accompanying Jupyter notebooks.


## Why This Tutorial?

Computational analysis of Turkish makam music requires expertise from multiple disciplines, including music information retrieval, symbolic music processing, statistics, and machine learning. Although several Turkish makam music datasets are publicly available, practical educational resources demonstrating a complete computational workflow remain limited.

This tutorial bridges that gap by presenting an end-to-end, reproducible workflow that integrates multiple symbolic music datasets within a unified analytical framework. Rather than focusing on a single analysis technique, the tutorial demonstrates how statistical analysis, visualization, dimensionality reduction, and clustering can be combined to better understand symbolic Turkish makam music.

## Prerequisites

Basic familiarity with Python programming and Jupyter notebooks is recommended. Prior knowledge of machine learning or Turkish makam music is beneficial but not required, since each analysis step is explained throughout the tutorial.

## Learning Objectives

After completing this tutorial, readers will be able to

- understand the structure of symbolic Turkish makam music datasets,
- perform exploratory data analysis,
- generate statistical summaries automatically,
- visualize symbolic music data,
- apply Principal Component Analysis (PCA),
- perform clustering analysis,
- interpret computational results,
- compare multiple Turkish makam music datasets using a common analytical framework.


## Datasets Used

This tutorial is based on three publicly available datasets that represent complementary aspects of symbolic Turkish makam music. Together, these datasets provide a comprehensive foundation for demonstrating reproducible computational music analysis techniques across different levels of musical representation.

| Dataset                                   | Description                                                                                                                                                                                                                            | Official Source                                    |
| ----------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------- |
| **SymbTr**                                | A large-scale symbolic corpus containing complete Turkish makam music scores. It serves as the primary dataset for exploratory data analysis, statistical analysis, visualization, Principal Component Analysis (PCA), and clustering. | [Zenodo](https://doi.org/10.5281/zenodo.15470412)  |
| **Turkish Makam Symbolic Phrase Dataset** | A phrase-level symbolic dataset containing annotated musical phrases extracted from Turkish makam music. It is used to demonstrate phrase-level symbolic analysis and to complement score-level investigations.                        | [UPF CompMusic](http://compmusic.upf.edu/node/237) |
| **Turkish Makam Melodic Phrase Dataset**  | A phrase-level dataset containing melodic phrase representations derived from Turkish makam music. It is used for comparative analysis of melodic structures and phrase-based symbolic music representations.                          | [UPF CompMusic](http://compmusic.upf.edu/node/236) |

Although these datasets differ in their scope and granularity, the computational workflow presented in this tutorial can be applied consistently across all of them. By integrating score-level and phrase-level datasets within a unified analytical framework, this tutorial demonstrates how statistical analysis, visualization, dimensionality reduction, and clustering techniques can be used to investigate symbolic Turkish makam music in a reproducible and extensible manner.


## Tutorial Workflow

The tutorial follows a reproducible computational workflow that guides readers from dataset acquisition to the interpretation of analytical results. Each notebook represents one stage of the workflow and builds upon the outputs of the previous stage.

```{figure} _static/workflow.png
---
width: 90%
name: tutorial-workflow
---
Overview of the computational workflow presented throughout this tutorial.
```

| Step | Objective                                    | Notebook                    |
| ---- | -------------------------------------------- | --------------------------- |
| 1    | Download and prepare the datasets            | `01_download_data`          |
| 2    | Explore dataset structure and metadata       | `02_data_overview`          |
| 3    | Compute descriptive statistics               | `03_statistical_analysis`   |
| 4    | Visualize musical characteristics            | `04_visualizations`         |
| 5    | Apply Principal Component Analysis (PCA)     | `05_pca_analysis`           |
| 6    | Perform clustering analysis                  | `06_clustering`             |
| 7    | Interpret clustering results                 | `07_cluster_interpretation` |
| 8    | Explore related Turkish makam music datasets | `08_related_datasets`       |

The notebooks are designed to be completed sequentially. Together, they provide a complete end-to-end pipeline for reproducible computational analysis of symbolic Turkish makam music datasets, from data acquisition to exploratory analysis, visualization, machine learning, and comparative dataset exploration.



## Target Audience

This tutorial is intended for researchers, students, and practitioners interested in computational musicology, symbolic music analysis, Turkish makam music, and data-driven approaches to music information retrieval.

## Expected Outcomes


Upon completing this tutorial, readers will be able to reproduce a complete computational workflow for analyzing symbolic Turkish makam music datasets using Python and Jupyter notebooks. They will gain practical experience in exploratory data analysis, statistical analysis, visualization, dimensionality reduction, clustering, and comparative dataset analysis.

The workflow presented throughout this tutorial is designed to be reproducible, extensible, and adaptable to other symbolic music collections, making it suitable for education, research, and future computational musicology applications.


