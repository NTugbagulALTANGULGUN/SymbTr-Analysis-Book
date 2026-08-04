import json
from pathlib import Path


NOTEBOOKS = {
    "01_literature_review.ipynb": (
        "Literature Review",
        "This notebook reviews the main datasets, methods, and research directions related to computational analysis of Turkish makam music."
    ),
    "02_accessing_and_preparing_the_symbtr_v3_dataset.ipynb": (
        "Accessing and Preparing the SymbTr v3.0 Dataset",
        "This notebook downloads, extracts, validates, and prepares the SymbTr v3.0 dataset for subsequent computational analysis."
    ),
    "03_individual_composition_analysis.ipynb": (
        "Individual Composition Analysis of the SymbTr TXT Dataset",
        "This notebook examines individual symbolic music compositions stored in the SymbTr TXT format."
    ),
    "04_exploring_and_statistically_analyzing_the_symbtr_txt_collection.ipynb": (
        "Exploring and Statistically Analyzing the SymbTr TXT Collection",
        "This notebook explores the structure and statistical characteristics of the complete SymbTr TXT collection."
    ),
    "05_statistical_visualizations.ipynb": (
        "Statistical Visualizations of the SymbTr Corpus",
        "This notebook presents statistical visualizations of the SymbTr corpus and its principal musical attributes."
    ),
    "06_pca_analysis.ipynb": (
        "Principal Component Analysis",
        "This notebook applies Principal Component Analysis to obtain lower-dimensional representations of symbolic music features."
    ),
    "07_clustering_analysis.ipynb": (
        "Clustering Analysis",
        "This notebook applies clustering methods to identify groups of compositions with similar computational characteristics."
    ),
    "08_txt_to_musicxml_conversion.ipynb": (
        "TXT to MusicXML Conversion",
        "This notebook converts SymbTr TXT files into separate MusicXML files for symbolic music processing and interoperability."
    ),
    "09_markov_chain_music_generation.ipynb": (
        "Markov Chain Music Generation",
        "This notebook constructs Markov chain models from symbolic music data and generates new musical sequences."
    ),
    "10_midi_tempo_modification.ipynb": (
        "MIDI Tempo Modification",
        "This notebook reads MIDI files, detects tempo information, modifies tempo values, and saves updated MIDI files."
    ),
    "11_related_datasets.ipynb": (
        "Related Datasets",
        "This notebook introduces public datasets related to Turkish makam music, computational musicology, and symbolic music analysis."
    ),
    "12_related_datasets_and_statistical_analysis.ipynb": (
        "Related Datasets and Statistical Analysis",
        "This notebook compares related datasets and presents selected statistical analyses across their available metadata and musical attributes."
    ),
    "13_interactive_makam_following_demo.ipynb": (
        "Interactive Makam Following Demo",
        "This notebook demonstrates an interactive workflow for following makam-related information during symbolic music analysis."
    ),
    "14_open_research_problems.ipynb": (
        "Open Research Problems",
        "This notebook discusses unresolved research problems and future directions in Turkish makam music analysis and music artificial intelligence."
    ),
    "15_contributing.ipynb": (
        "Contributing",
        "This notebook explains how researchers and developers can contribute datasets, code, analyses, documentation, and corrections to the project."
    ),
}


PROJECT_ROOT = Path(__file__).resolve().parent
NOTEBOOK_DIRECTORY = PROJECT_ROOT / "notebooks"


def create_title_cell(title: str, description: str) -> dict:
    """Create the standard introductory Markdown cell."""

    return {
        "cell_type": "markdown",
        "id": "notebook-title",
        "metadata": {},
        "source": [
            f"# {title}\n",
            "\n",
            f"{description}\n",
        ],
    }


def is_level_one_heading(cell: dict) -> bool:
    """Return True when the Markdown cell starts with a level-one heading."""

    if cell.get("cell_type") != "markdown":
        return False

    text = "".join(cell.get("source", [])).lstrip()
    return text.startswith("# ")


def update_notebook(path: Path, title: str, description: str) -> str:
    """Insert or replace the notebook's introductory title cell."""

    with path.open("r", encoding="utf-8") as file:
        notebook = json.load(file)

    notebook.setdefault("cells", [])
    new_title_cell = create_title_cell(title, description)

    if notebook["cells"] and is_level_one_heading(notebook["cells"][0]):
        current_text = "".join(notebook["cells"][0].get("source", []))

        expected_text = "".join(new_title_cell["source"])

        if current_text.strip() == expected_text.strip():
            return "already_current"

        notebook["cells"][0] = new_title_cell
        status = "replaced"
    else:
        notebook["cells"].insert(0, new_title_cell)
        status = "inserted"

    with path.open("w", encoding="utf-8") as file:
        json.dump(
            notebook,
            file,
            indent=1,
            ensure_ascii=False,
        )
        file.write("\n")

    return status


def main() -> None:
    print("=" * 72)
    print("TDC-Analysis-Book Notebook Title Update")
    print("=" * 72)
    print(f"Notebook directory: {NOTEBOOK_DIRECTORY}")
    print()

    if not NOTEBOOK_DIRECTORY.exists():
        print("ERROR: The notebooks directory was not found.")
        print(f"Expected directory: {NOTEBOOK_DIRECTORY}")
        print()
        print("Place this script in the project root directory:")
        print(PROJECT_ROOT)
        return

    counters = {
        "inserted": 0,
        "replaced": 0,
        "already_current": 0,
        "missing": 0,
        "error": 0,
    }

    for filename, (title, description) in NOTEBOOKS.items():
        notebook_path = NOTEBOOK_DIRECTORY / filename

        if not notebook_path.exists():
            print(f"Missing         : {filename}")
            counters["missing"] += 1
            continue

        try:
            status = update_notebook(
                path=notebook_path,
                title=title,
                description=description,
            )

            if status == "inserted":
                print(f"Title inserted  : {filename}")
            elif status == "replaced":
                print(f"Title replaced  : {filename}")
            else:
                print(f"Already current : {filename}")

            counters[status] += 1

        except (OSError, json.JSONDecodeError, KeyError, TypeError) as error:
            print(f"Error           : {filename} -> {error}")
            counters["error"] += 1

    print()
    print("=" * 72)
    print(f"Inserted        : {counters['inserted']}")
    print(f"Replaced        : {counters['replaced']}")
    print(f"Already current : {counters['already_current']}")
    print(f"Missing         : {counters['missing']}")
    print(f"Errors          : {counters['error']}")
    print("=" * 72)
    print("Finished.")


if __name__ == "__main__":
    main()