# B.Sc. Project Report LaTeX Template
**Department of Physics, Shahjalal University of Science and Technology (SUST)**

This repository contains the standard LaTeX template configured for preparing B.Sc. Physics project reports at SUST.

## Prerequisites
Ensure you have a complete TeX distribution installed:
- **Linux**: TeX Live (`texlive-full` package recommended)
- **macOS**: MacTeX
- **Windows**: MiKTeX / TeX Live

You also need `biber` to compile references/bibliography.

## Project Structure
- `main.tex`: Master entry file. Edit your metadata (Title, Author, Supervisor) here.
- `preamble/packages.tex`: All LaTeX package imports, layout parameters, and configurations.
- `frontmatter/`: Approval Certificates, declarations, abstract, table of contents, and list of abbreviations.
- `chapters/`: Six standard chapters (`chapter01.tex` through `chapter06.tex`).
- `bibliography/references.bib`: BibLaTeX database file.
- `appendices/`: Appendix files.
- `figures/`: Images, charts, and diagrams. Place `sust_logo.png` here if you need to update it.

## How to Compile
You can use the provided `Makefile` to automate compilation:

### Build PDF
```bash
make all
```
This runs:
1. `pdflatex main`
2. `biber main`
3. `pdflatex main` (x2)

### Clean Temporary Files
To delete auxiliary files generated during compilation:
```bash
make clean
```

### View Compiled PDF
```bash
make view
```
