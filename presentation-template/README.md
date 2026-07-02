# SUST Physics — 7-Minute Defense Presentation Template (Beamer)
Department of Physics, Shahjalal University of Science and Technology (SUST), Sylhet, Bangladesh.

A modern, paper-style Beamer template for a **7-minute defense** of a B.Sc. project or an M.S. thesis. Eleven slides, scientifically toned, brand-consistent with the B.Sc. and M.S. PDF templates in this repo.

---

## 7-minute pacing plan

| Slide | Topic                              | Time        | Cumulative |
|-------|------------------------------------|-------------|------------|
| 1     | Title page                         | 0:00--0:15  | 0:15       |
| 2     | Outline + pacing roadmap            | 0:15--0:30  | 0:30       |
| 3     | Problem + objectives               | 0:30--1:15  | 1:15       |
| 4     | Methodology + schematic            | 1:15--2:00  | 2:00       |
| 5     | **Headline result**                | 2:00--3:30  | 3:30       |
| 6     | Other results                      | 3:30--4:30  | 4:30       |
| 7     | Discussion + limitations           | 4:30--5:30  | 5:30       |
| 8     | Summary + future work              | 5:30--6:15  | 6:15       |
| 9     | References                         | 6:15--6:30  | 6:30       |
| 10    | Acknowledgements                   | 6:30--6:45  | 6:45       |
| 11    | Thank you / Q&A                    | 6:45--7:00  | 7:00       |

Slides 9--11 are read-only; they hold the screen while the presenter fields questions.

---

## Directory structure

```
presentation-template/
├── main.tex                 # master file
├── Makefile                 # pdflatex x2 (no bibtex needed)
├── README.md
├── .gitignore
├── sust_logo.png            # auto-copied from the B.Sc. / M.S. template (figures/)
│
├── preamble/
│   ├── sustbeamer.sty       # custom SUST paper-style theme (colors, fonts, frame title)
│   └── packages.tex         # document-level packages + custom helpers (\highlight, \resultbox)
│
├── frontmatter/
│   ├── titlepage.tex        # slide 1
│   └── outline.tex          # slide 2 — outline + pacing bar
│
├── sections/
│   ├── slide03-problem.tex  # Problem + objectives
│   ├── slide04-methodology.tex
│   ├── slide05-headline-results.tex
│   ├── slide06-other-results.tex
│   ├── slide07-discussion.tex
│   ├── slide08-summary.tex
│   ├── slide09-references.tex
│   ├── slide10-acknowledgements.tex
│   └── slide11-thanks.tex
│
├── references/
│   └── references.bib       # optional; slide 9 uses inline thebibliography by default
│
└── figures/
    └── sust_logo.png
```

---

## Prerequisites

- **pdfLaTeX** (TeX Live / MiKTeX)
- **beamer** (ships with TeX Live)
- Standard packages: `tikz`, `pgfplots`, `siunitx`, `hyperref`, `listings`, `booktabs`, `natbib`, `xcolor`, `helvet`, `newtxmath`.

The custom SUST theme is local (`preamble/sustbeamer.sty`) so you do **not** need the metropolis package or any third-party Beamer theme.

---

## Compilation

```bash
make all        # builds the deck (pdflatex twice)
make clean      # removes auxiliary files
make view       # opens the PDF with xdg-open
```

The bibliography on slide 9 is shipped inline, so **no bibtex step** is required. If you prefer the auto-bibliography style:
1. Edit `sections/slide09-references.tex` to replace the `\begin{thebibliography}...\end{thebibliography}` block with:
   ```latex
   \bibliographystyle{unsrtnat}
   \bibliography{references/references}
   ```
2. Add a `bib` rule to the `Makefile` and uncomment the corresponding comment.

---

## Customisation

Edit the **single block** of metadata near the top of `main.tex`:

```latex
\def\defTitle{Your Thesis or Project Title: Modern, Concise, Quantitative}
\def\defAuthor{Student Name}
\def\defRoll{Reg. No. 00000000}
\def\defSession{2024--25}
\def\defSupervisor{Prof.\ Dr.\ Supervisor Name}
\def\defSupervisorDesig{Professor, Department of Physics, SUST}
\def\defCoSupervisor{}                       % leave empty to suppress
\def\defCoSupervisorDesig{}
\def\defDate{\today}
\def\defenseLabel{B.Sc.\ Project Defense}    % or ``M.S.\ Thesis Defense''
\def\talkDuration{7-minute}                  % shown on outline slide
```

Notes:
- `\defCoSupervisor` empty → the title page omits the co-supervisor line automatically (handled inside `frontmatter/titlepage.tex` via `\ifx\defCoSupervisor\empty`).
- `\defDefenseLabel` is the only label that changes between B.Sc. defense and M.S. defense.
- All custom visual helpers — `\highlight{...}`, `\resultbox{...}{...}`, `\timenote{...}` — are defined in `preamble/packages.tex`. Use them freely in any slide.

---

## Design constants (palette + typography)

All structural colours live in `preamble/sustbeamer.sty`:

| Token           | Hex      | Use |
|-----------------|----------|-----|
| `sustBlue`      | `#003F87`| primary (frametitle, nav, accent items) |
| `sustBlueDark`  | `#002B5C`| subtitle, bibliography author |
| `sustBlueLight` | `#5E84C4`| secondary highlight, hyperlink URLs |
| `sustAccent`    | `#C75B12`| burnt-orange highlight for emphasis |
| `sustSoft`      | `#E8EEF7`| block body background |
| `sustGray`      | `#666666`| subdued text (timenote, captions) |

Typography:
- Text: Helvetica (sans-serif default)
- Math: `newtxmath` (renders alongside Helvetica across equations)
- Frame title: bold, 14pt, left-aligned, 1pt orange accent rule beneath

---

## How to swap the headline-figure workflow

In `sections/slide05-headline-results.tex`, the example uses an inline `pgfplots` axis. To use an external figure:

```latex
% Replace the tikzpicture block with:
\includegraphics[width=\textwidth]{figures/headline-result.pdf}
\caption{Single sentence stating the number with units.}
```

Drop the file into `figures/` and rebuild. PDF is preferred to PNG for projector sharpness.

---

## Differences from the BSc / MS thesis templates

- Designed for **slides**, not a 30-page report — fewer equations, larger type, no `\input` chain shown by default.
- The custom theme file (`sustbeamer.sty`) carries the brand colours — BSc / MS use the standard `geometry` + `fancyhdr` setup.
- No `bibtex` step required; the bibliography is inline.
- Per-slide `CONTENT BLUEPRINT` block comments give writing guidance for the speech you will give, not for the paper you will write.
