# SUST Department of Physics LaTeX Templates

Welcome to the official LaTeX templates repository for the **Department of Physics** at **Shahjalal University of Science and Technology (SUST)**, Sylhet, Bangladesh. 

This repository provides professionally structured, standardized, and fully compliant LaTeX templates designed to assist students in preparing their academic project reports and theses.

---

## 📂 Repository Contents

This repository is organized into two primary templates:

1. **[B.Sc. Project Report Template](./bsc-project-template/)**
   - Configured for B.Sc. (Honours) Physics project/internship reports.
   - Includes standard approval sheets, declarations, and a 6-chapter structure.
   - Refer to the [B.Sc. Template README](./bsc-project-template/README.md) for specific details.

2. **[M.S. Thesis Template](./ms-thesis-template/)**
   - Configured for M.S. Physics theses.
   - Built to meet SUST library binding specifications (1.5" left margin), double-spacing, and glossary/nomenclature listings.
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
- **Biber**: For bibliography and reference processing (modern alternative to legacy BibTeX).
- **makeglossaries**: For compiling acronyms and glossary lists (primarily used in the M.S. template).
- **GNU Make** (optional): For using the automation script.

## 🚀 Compilation
Each template directory contains its own `Makefile` to automate the LaTeX compilation pipeline. To compile a template:

1. Open your terminal.
2. Navigate into the template's directory (e.g., `cd bsc-project-template` or `cd ms-thesis-template`).
3. Run the following commands:

   * **Build PDF**:
     ```bash
     make all
     ```
   * **Clean temporary files**:
     ```bash
     make clean
     ```

---

## 📖 Standard Structure

Both templates share a consistent, modern multi-file structure:
- `main.tex`: Master document. Define details like Title, Author, Supervisor, and Roll/Reg numbers here.
- `preamble/`: Houses global style definitions, package imports, and layout configurations.
- `frontmatter/`: Front-of-book sections such as the title page, certificates, declaration, abstract, and tables of contents.
- `chapters/`: Modular LaTeX source files for each individual chapter (Chapters 1 to 6).
- `bibliography/`: Contains the `references.bib` BibTeX database.
- `figures/`: Images, charts, and diagrams.

---

## 🤝 Contributing & Feedback

If you find any issues, styling deviations from departmental rules, or have suggestions for improvements, feel free to open a Pull Request or create an Issue.
