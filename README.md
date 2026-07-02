# SUST Department of Physics LaTeX Templates

Welcome to the official LaTeX templates repository for the **Department of Physics** at **Shahjalal University of Science and Technology (SUST)**, Sylhet, Bangladesh.

This repository provides professionally structured, standardized, and fully compliant LaTeX templates designed to assist students in preparing their academic project reports and theses.

---

## 📂 Repository Contents

This repository is organized into two primary templates:

1. **[B.Sc. Project Report Template](./bsc-project-template/)**
   - Configured for B.Sc. (Honours) Physics project/internship reports.
   - Includes standard approval sheets, declarations, and a 5-chapter structure (Introduction → Conclusion & Future Work).
   - BibTeX + natbib for citations.
   - Refer to the [B.Sc. Template README](./bsc-project-template/README.md) for specific details.

2. **[M.S. Thesis Template](./ms-thesis-template/)**
   - Configured for M.S. Physics theses.
   - Built to meet SUST library binding specifications (1.5" left margin), double-spacing, and glossary/nomenclature listings.
   - BibTeX + natbib for citations; glossary/acronyms via the `glossaries` package with `makeglossaries`.
   - Refer to the [M.S. Template README](./ms-thesis-template/README.md) for specific details.

---

## 🛠️ Prerequisites

To compile these templates, you need a standard LaTeX distribution and a few compiler utilities:

### 1. TeX Distribution
- **Linux**: TeX Live (`texlive-full` package recommended)
- **macOS**: MacTeX
- **Windows**: MiKTeX or TeX Live

### 2. Required Compilation Tools
- **pdfLaTeX**: For generating the PDF documents.
- **bibtex**: For bibliography and reference processing (legacy engine; works with the `natbib` package used by both templates).
- **makeglossaries**: For compiling acronyms and glossary lists (M.S. template only).
- **GNU Make** (optional): For using the automation script.

> ⚠️ Older versions of these template READMEs referenced *biber* and *biblatex*. The current shipped templates deliberately use **bibtex + natbib** for simplicity and maximum portability. If your project requires biber, follow the biblatex migration note in each template's README.

---

## 🚀 Compilation
Each template directory contains its own `Makefile` to automate the LaTeX compilation pipeline. To compile a template:

1. Open your terminal.
2. Navigate into the template's directory (e.g. `cd bsc-project-template` or `cd ms-thesis-template`).
3. Run:
   ```bash
   make all    # Build PDF
   make clean  # Clean auxiliary files
   ```

### ☁️ Using Overleaf

If you prefer to write and compile your document on **Overleaf**:

1. Create a ZIP archive of the template folder's *contents* (so `main.tex` is at the ZIP root).
2. Upload to Overleaf → New Project → Upload Project.
3. Open the **Menu** (top-left in the editor):
   - Set **Compiler** to **pdfLaTeX**.
   - Set **Main document** to **`main.tex`**.
4. Overleaf's build system auto-detects both engines. For the M.S. template, enable **glossaries** by ticking "Use makeglossaries" in *Menu → Settings → Build*. The bibliography step runs automatically when `bibtex` is invoked from the Makefile or the .latexmkrc equivalent.

---

## 📖 Standard Structure

Both templates share a consistent, modern multi-file structure:
- `main.tex`: Master document. Define details like Title, Author, Supervisor, and Roll/Reg numbers here.
- `preamble/`: Houses global style definitions, package imports, and layout configurations.
- `frontmatter/`: Front-of-book sections such as the title page, certificates, declaration, abstract, and tables of contents.
- `chapters/`: Modular LaTeX source files for each individual chapter.
- `bibliography/`: Contains the `references.bib` BibTeX database.
- `figures/`: Images, charts, and diagrams.

The M.S. template additionally ships:
- `glossary/`: Acronym definitions (`acronyms.tex`), compiled with `makeglossaries`.
- `algorithms/` (MS only): Optional float environment for pseudocode listings; referenced in main.tex when used.
- `appendices/`: Multiple appendices (e.g. mathematical derivations, supplementary tables, code listings).

---

## 🤝 Contributing & Feedback

If you find any issues, styling deviations from departmental rules, or have suggestions for improvements, feel free to open a Pull Request or create an Issue.
