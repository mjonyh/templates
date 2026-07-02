# Shahjalal University of Science and Technology (SUST)
## Department of Physics — M.S. Thesis LaTeX Template

This is a professional, fully structured LaTeX template for writing Master of Science (M.S.) theses in the Department of Physics at Shahjalal University of Science and Technology (SUST), Sylhet, Bangladesh. It is designed to meet all standard department guidelines, library binding specifications (1.5" left margin), double-spacing, and academic conventions.

---

## Directory Structure

```
ms-thesis-template/
├── main.tex                    # Master entry file (configure personal details here)
├── Makefile                    # Build automation tool
├── README.md                   # This instruction file
├── .gitignore                  # Git ignore rules for LaTeX build files
├── sust_logo.png               # Official SUST logo
│
├── preamble/
│   └── packages.tex            # Packages, page geometry, custom styling
│
├── frontmatter/
│   ├── titlepage.tex           # Thesis title/cover page layout
│   ├── certificate.tex         # Formal approval page with signature blocks
│   ├── declaration.tex         # Originality and anti-plagiarism declaration
│   ├── acknowledgments.tex     # Personal thanks page
│   ├── abstract.tex            # Structured summary of the research (max 500 words)
│   ├── lists.tex               # Automated Table of Contents, Figures, Tables, Algorithms
│   └── nomenclature.tex        # List of physics symbols, descriptions, and units
│
├── chapters/                   # Six-chapter thesis structure
│   ├── chapter01.tex           # Ch 1: Introduction (Background, Objectives, Scope)
│   ├── chapter02.tex           # Ch 2: Literature Review (Prior works, context)
│   ├── chapter03.tex           # Ch 3: Methodology / Theoretical Framework
│   ├── chapter04.tex           # Ch 4: Results and Analysis (Part I)
│   ├── chapter05.tex           # Ch 5: Results and Analysis (Part II) / Discussion
│   └── chapter06.tex           # Ch 6: Conclusion and Future Work
│
├── glossary/
│   └── acronyms.tex            # Acronym definitions using the glossaries package
│
├── algorithms/
│   └── scf.tex                 # Optional: standalone SCF algorithm example
│                               # (uncomment in main.tex to enable)
│
├── bibliography/
│   └── references.bib          # Bibliography database (BibTeX + natbib entries)
│
├── appendices/
│   ├── appendixA.tex           # App A: Mathematical Derivations
│   ├── appendixB.tex           # App B: Supplementary Tables
│   └── appendixC.tex           # App C: Supplementary Code Listings
│
└── figures/                    # Put image files (PNG, PDF, EPS) here
```

---

## Prerequisites

To compile this template, you need a standard LaTeX distribution (TeX Live or MiKTeX) along with:
1. **pdfLaTeX** — for compiling document source.
2. **bibtex** — for compiling references (this template uses BibTeX via the `natbib` citation package — not biber/biblatex).
3. **makeglossaries** — for compiling abbreviations and glossary terms.
4. **GNU Make** (optional, for utilizing the `Makefile`).

> Older versions of this README referenced *biber* and *biblatex*. The current shipped template deliberately uses **bibtex + natbib** for simplicity and maximum portability. If your thesis requires biber, replace the natbib line in `preamble/packages.tex` with `\usepackage[backend=biber,style=numeric,sorting=none]{biblatex}` plus `\addbibresource{bibliography/references.bib}` and run `biber main` instead of `bibtex main` in the Makefile.

---

## Compilation Instructions

### Option 1: Automated (Using Makefile)

Open a terminal in the project directory and run:

```bash
make all
```

This compiles: pdflatex → makeglossaries → bibtex → pdflatex → pdflatex. The two trailing pdflatex passes resolve forward references and bibliography entries.

To clean up all compilation helper files (e.g. `.aux`, `.log`, `.toc`, `.bbl`, `.gls`):

```bash
make clean
```

### Option 2: Manual (No Makefile)

If you are not using `make`, execute the following sequence in your terminal:

```bash
pdflatex main.tex
makeglossaries main
bibtex main
pdflatex main.tex
pdflatex main.tex
```

---

## Customization

### 1. Update Personal Info
Open `main.tex` and update the macros:
- `\thesistitle{...}`: Your thesis title.
- `\authorname{...}`: Your name.
- `\rollnumber{...}`: M.S. Roll Number.
- `\regnumber{...}`: Registration Number.
- `\session{...}`: Academic Session (e.g. 2024-25).
- `\supervisorname{...}`: Supervisor's name.
- `\supervisordesignating{...}`: Supervisor's designation (e.g. *Professor, Department of Physics, SUST*).
- `\headname{...}`: Head of Department's name.
- `\cosupervisorname{...}` / `\cosupervisordesignating{...}`: Leave empty to omit the co-supervisor block. Fill in to enable it.
- `\externalexaminername{...}` / `\externalexaminerdesignating{...}`: Leave empty to omit. Fill in to enable.
- `\submissiondate{...}`: Submission date (e.g. June 2026).

If a macro is left empty, the corresponding signature block / paragraph is automatically suppressed via `\ifx\print<...>\empty` checks.

### 2. Changing Font to Times New Roman
By default, the template uses Computer Modern (`lmodern`). To switch to Times New Roman, open `preamble/packages.tex` and uncomment:
```latex
\usepackage{newtxtext,newtxmath}
```

### 3. Bibliography Style
The default bibliography style is `unsrtnat` — numeric citations sorted in order of first appearance, with natbib `\cite`/`\citep`/`\citet` semantics. If you prefer author-year citations (`Smith 2020`), switch to `\bibliographystyle{plainnat}` (or migrate to bibtot directly).

### 4. Standalone Algorithms
Drop additional pseudocode floats into `algorithms/<name>.tex`. To include a given algorithm in the compiled PDF, uncomment an `\input{algorithms/<name>}` line in `main.tex` (a slot exists right after the appendix block). Each included algorithm appears automatically in the **List of Algorithms**.

### 5. Citation commands (natbib)
- `\cite{key}` — numeric citation, e.g. `[3]`
- `\citep{key}` — parenthetical numeric, e.g. `([3])`
- `\citet{key}` — textual numeric, e.g. `Boyd [3]` (use sparingly)
- `\cite{key1,key2}` — grouped and compressed, e.g. `[2, 5]`
- `\citep*{key}` — author-year when natbib is loaded with options matching; numeric otherwise
