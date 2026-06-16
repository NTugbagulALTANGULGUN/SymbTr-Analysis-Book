import json
from pathlib import Path

titles = {
    "01_download_data.ipynb": "Download Data",
    "02_data_overview.ipynb": "Data Overview",
    "03_statistical_analysis.ipynb": "Statistical Analysis",
    "04_visualizations.ipynb": "Visualizations",
    "05_pca_analysis.ipynb": "PCA Analysis",
    "06_clustering.ipynb": "Clustering",
    "07_cluster_interpretation.ipynb": "Cluster Interpretation"
}

nb_dir = Path("webbook/notebooks")

for fname, title in titles.items():
    path = nb_dir / fname

    with open(path, "r", encoding="utf-8") as f:
        nb = json.load(f)

    md_cell = {
        "cell_type": "markdown",
        "metadata": {},
        "source": [
            f"# {title}\n",
            "\n",
            f"This notebook covers {title.lower()} for the SymbTr v3.0 dataset.\n"
        ]
    }

    first_cell = nb["cells"][0]

    if first_cell.get("cell_type") == "markdown":
        first_text = "".join(first_cell.get("source", []))
        if first_text.startswith("#"):
            print(f"Skipping {fname} (already has title)")
            continue

    nb["cells"].insert(0, md_cell)

    with open(path, "w", encoding="utf-8") as f:
        json.dump(nb, f, indent=1)

    print(f"Updated: {fname}")

print("Finished.")