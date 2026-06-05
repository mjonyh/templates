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
├── bibliography/
│   └── references.bib          # Bibliography database (BibLaTeX/Biber format)
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
1. **pdfLaTeX** — for compiling document source
2. **Biber** — for compiling references (instead of legacy BibTeX)
3. **makeglossaries** — for compiling abbreviations and glossary terms
4. **GNU Make** (optional, for utilizing the `Makefile`)

---

## Compilation Instructions

### Option 1: Automated (Using Makefile)

Open a terminal in the project directory and run:

```bash
make all
```

This compiles the document, processes the glossary/acronym files, compiles the bibliography, and runs the final layout passes.

To clean up all compilation helper files (e.g. `.aux`, `.log`, `.toc`):

```bash
make clean
```

---

### Option 2: Manual (No Makefile)

If you are not using `make`, execute the following sequence in your terminal:

```bash
pdflatex main.tex
makeglossaries main
biber main
pdflatex main.tex
pdflatex main.tex
```

---

## Customization

### 1. Update Personal Info
Open [main.tex](file:///home/mjonyh/git/ms-thesis-template/main.tex) and update the macros:
- `\thesistitle{...}`: Your thesis title.
- `\authorname{...}`: Your name.
- `\rollnumber{...}`: M.S. Roll Number.
- `\regnumber{...}`: Registration Number.
- `\session{...}`: Academic Session.
- `\supervisorname{...}`: Name of your research supervisor.
- `\cosupervisorname{...}`: Co-supervisor name (if none, leave blank).

### 2. Changing Font to Times New Roman
By default, the template uses Computer Modern (`lmodern`). To switch to Times New Roman, open [preamble/packages.tex](file:///home/mjonyh/git/ms-thesis-template/preamble/packages.tex) and uncomment:
```latex
\usepackage{newtxtext,newtxmath}
```

### 3. Bibliography Style
The default bibliography style is `numeric` (e.g., [1]). If you prefer `author-year` citations (e.g., Smith 2020), modify the `biblatex` package loading options inside [preamble/packages.tex](file:///home/mjonyh/git/ms-thesis-template/preamble/packages.tex).
