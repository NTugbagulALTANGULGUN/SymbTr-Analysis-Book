import json
from pathlib import Path

titles = {
    "01_download_data.ipynb": ("Download Data", "This notebook downloads and validates the SymbTr v3.0 Turkish Maqam Music Dataset from Zenodo."),
    "02_data_overview.ipynb": ("Data Overview", "This notebook provides an overview of the dataset structure, dimensions, missing values, and descriptive statistics."),
    "03_statistical_analysis.ipynb": ("Statistical Analysis", "This notebook explores statistical properties of the pitch trajectories."),
    "04_visualizations.ipynb": ("Visualizations", "This notebook presents visual representations of pitch trajectories and dataset characteristics."),
    "05_pca_analysis.ipynb": ("PCA Analysis", "This notebook applies Principal Component Analysis for dimensionality reduction and visualization."),
    "06_clustering.ipynb": ("Clustering", "This notebook applies K-Means clustering to identify groups of similar pitch trajectories."),
    "07_cluster_interpretation.ipynb": ("Cluster Interpretation", "This notebook investigates the musical meaning of the clusters through average pitch contour analysis."),
}

nb_dir = Path("webbook") / "notebooks"

for fname, (title, description) in titles.items():
    path = nb_dir / fname

    if not path.exists():
        print(f"Missing: {path}")
        continue

    with open(path, "r", encoding="utf-8") as f:
        nb = json.load(f)

    first_cell = nb["cells"][0] if nb.get("cells") else None

    if first_cell and first_cell.get("cell_type") == "markdown":
        first_text = "".join(first_cell.get("source", []))
        if first_text.lstrip().startswith(f"# {title}"):
            print(f"Already OK: {fname}")
            continue

    md_cell = {
        "cell_type": "markdown",
        "metadata": {},
        "source": [
            f"# {title}\n",
            "\n",
            f"{description}\n"
        ]
    }

    nb["cells"].insert(0, md_cell)

    with open(path, "w", encoding="utf-8") as f:
        json.dump(nb, f, indent=1, ensure_ascii=False)

    print(f"Updated: {fname}")

print("Finished.")