# Makefile for the SUST presentation template (Beamer, custom theme).
# - Slides are short, bibliography is inline -> a single pdflatex pass
#   is enough. We run two passes to settle the navigation bar (frame
#   counts, section labels in the footline).

MAIN  = main
PDF   = $(MAIN).pdf
SRC   = main.tex \
        preamble/beamerthemesustbeamer.sty \
        preamble/packages.tex \
        frontmatter/titlepage.tex \
        frontmatter/outline.tex \
        sections/slide03-problem.tex \
        sections/slide04-methodology.tex \
        sections/slide05-headline-results.tex \
        sections/slide06-other-results.tex \
        sections/slide07-discussion.tex \
        sections/slide08-summary.tex \
        sections/slide09-references.tex \
        sections/slide10-acknowledgements.tex \
        sections/slide11-thanks.tex

.PHONY: all clean view bib

all: $(PDF)

$(PDF): $(SRC)
	export TEXINPUTS=.:./preamble: && pdflatex $(MAIN)
	export TEXINPUTS=.:./preamble: && pdflatex $(MAIN)

bib:
	@echo "This template uses inline thebibliography -> no bibtex step required."
	@echo "If you migrate slide09-references.tex to \\bibliography{references/references},"
	@echo "then run:  bibtex main  (and add 'bib' to the main rule above)."

view: $(PDF)
	xdg-open $(PDF) &

clean:
	rm -f *.aux *.log *.out *.nav *.snm *.toc *.vrb *.pdf
