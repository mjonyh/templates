# B.Sc. Project Report LaTeX Template
**Department of Physics, Shahjalal University of Science and Technology (SUST)**

This repository contains the standard LaTeX template configured for preparing B.Sc. Physics project reports at SUST.

## Prerequisites
Ensure you have a complete TeX distribution installed:
- **Linux**: TeX Live (`texlive-full` package recommended)
- **macOS**: MacTeX
- **Windows**: MiKTeX / TeX Live

You also need `bibtex` to compile the bibliography (this template uses BibTeX via the `natbib` citation package — not biber/biblatex).

## Project Structure
- `main.tex`: Master entry file. Edit your metadata (Title, Author, Supervisor) here.
- `preamble/packages.tex`: All LaTeX package imports, layout parameters, and configurations.
- `frontmatter/`: Approval Certificates, declarations, abstract, table of contents, and list of abbreviations.
- `chapters/`: Five standard chapters (`chapter01.tex` through `chapter05.tex`).
- `bibliography/references.bib`: BibTeX database file.
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
2. `bibtex main`
3. `pdflatex main` (x2 — resolves bibliography and forward references)

The five-chapter structure plus one appendix is intentional: Chapter 5 is reserved for "Conclusion and Future Work", so a six-chapter skeleton (Introduction → Conclusion) is not required. If your project genuinely needs an additional chapter, copy `chapter05.tex` to `chapter06.tex` and add `\input{chapters/chapter06}` to `main.tex`; do not edit the existing chapter numbering of later files.

### Clean Temporary Files
To delete auxiliary files generated during compilation:
```bash
make clean
```

### View Compiled PDF
```bash
make view
```

## Customization
Open `main.tex` and update the macros to your project:
- `\thesistitle{...}`: Your project title.
- `\authorname{...}`: Your name.
- `\rollnumber{...}`: Registration/Roll Number.
- `\session{...}`: Academic session (e.g. 2020-21).
- `\supervisorname{...}`: Supervisor's name.
- `\supervisordesignating{...}`: Supervisor's designation (e.g. *Associate Professor, Department of Physics, SUST*).
- `\headname{...}`: Head of Department's name.
- `\submissiondate{...}`: Submission date.

## Bibliography Engine
This template ships with **BibTeX + natbib** (`\usepackage[numbers,sort&compress]{natbib}`). The accompanying `references.bib` file uses Natbib-compatible entries. Do **not** switch the compiler to `biber` without also migrating the style and the .bib file to `biblatex`. If you want biber, replace the natbib line with `\usepackage[backend=biber,style=numeric,sorting=none]{biblatex}` plus `\addbibresource{bibliography/references.bib}` and run `biber main` instead of `bibtex main`.

### Citation commands (natbib)
- `\cite{key}` — numeric citation, e.g. `[3]`
- `\citep{key}` — parenthetical numeric, e.g. `([3])`
- `\citet{key}` — textual author-year style is *not* enabled here; for numeric use `\cite{key}`
- `\cite{key1,key2}` — grouped and compressed, e.g. `[2, 5]`
