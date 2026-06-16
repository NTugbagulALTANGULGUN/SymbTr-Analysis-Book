# SymbTr Analysis Book


A Jupyter Book project for exploring, visualizing, and analyzing the SymbTr v3.0 Turkish Maqam Music dataset using statistical analysis, dimensionality reduction, and machine learning techniques.


## Dataset

Source: SymbTr v3.0 Turkish Maqam Music Dataset

Zenodo Record:
https://zenodo.org/records/15470412


## Project Goal

The goal of this project is to explore and analyze the SymbTr v3.0 Turkish Maqam Music dataset through:

- Exploratory Data Analysis (EDA)
- Statistical Analysis
- Data Visualization
- Principal Component Analysis (PCA)
- Clustering and Similarity Analysis

The project is implemented as a Jupyter Book and published through GitHub Pages.

The dataset is represented as time-series pitch trajectories of Turkish maqam music pieces and serves as a basis for exploratory and computational musicology analyses.


## Project Structure


### 01_download_data.ipynb


Responsible for downloading and validating the dataset.


Steps:


1. Create the required data directories.

2. Retrieve the list of files available in the Zenodo record.

3. Download the CSV dataset.

4. Verify the downloaded file size and existence.

5. Load the CSV file using Pandas and validate its structure.



Expected output:


* Dataset downloaded successfully.

* CSV file loaded successfully.

* Dataset shape: `(3000, 366)`.



### 02_data_overview.ipynb


* Inspect data structure

* Review column names and data types

* Detect missing values

* Generate descriptive statistics



### 03_statistical_analysis.ipynb


* Mean and median analysis

* Standard deviation analysis

* Distribution analysis

* Global statistical summaries

Total cells: 3000 × 365 = 1,095,000
The dataset contains "20,293" missing values( cell 20,293), corresponding to approximately 1.85% of the total observations.

### 04_visualizations.ipynb


* Individual piece visualization

* Average pitch contour

* Heatmaps

* Distribution plots



### 05_pca_analysis.ipynb


* Principal Component Analysis (PCA)

* Explained variance analysis

* 2D and 3D visualizations



### 06_clustering.ipynb

* K-Means clustering

* Hierarchical clustering

* Cluster visualization

* Similarity analysis


## Technologies

- Python
- Jupyter Notebook
- Jupyter Book
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn

## Installation Note

The PCA and clustering notebooks require `scikit-learn`.

If `scikit-learn` is not available