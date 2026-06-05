# Makefile to compile M.S. Thesis LaTeX template

MAIN = main
PDF = $(MAIN).pdf
SRC = $(MAIN).tex \
      preamble/packages.tex \
      frontmatter/titlepage.tex \
      frontmatter/certificate.tex \
      frontmatter/declaration.tex \
      frontmatter/acknowledgments.tex \
      frontmatter/abstract.tex \
      frontmatter/lists.tex \
      frontmatter/nomenclature.tex \
      chapters/chapter01.tex \
      chapters/chapter02.tex \
      chapters/chapter03.tex \
      chapters/chapter04.tex \
      chapters/chapter05.tex \
      chapters/chapter06.tex \
      appendices/appendixA.tex \
      appendices/appendixB.tex \
      appendices/appendixC.tex \
      glossary/acronyms.tex \
      bibliography/references.bib

.PHONY: all clean view bib glossary

all: $(PDF)

$(PDF): $(SRC)
	export TEXINPUTS=.:./preamble: && pdflatex $(MAIN)
	makeglossaries $(MAIN)
	export BIBINPUTS=.:./bibliography: && bibtex $(MAIN)
	export TEXINPUTS=.:./preamble: && pdflatex $(MAIN)
	export TEXINPUTS=.:./preamble: && pdflatex $(MAIN)

bib:
	export BIBINPUTS=.:./bibliography: && bibtex $(MAIN)

glossary:
	makeglossaries $(MAIN)

view: $(PDF)
	xdg-open $(PDF) &

clean:
	rm -f *.aux *.log *.out *.toc *.lof *.lot *.bbl *.blg *.bcf *.run.xml *.pdf
	rm -f *.glo *.ist *.glg *.gls *.alg *.acr *.acn *.loa
	rm -f chapters/*.aux appendices/*.aux frontmatter/*.aux
