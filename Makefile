# main.tex -> main.pdf
#
#   make            the manuscript
#   make clean      remove the intermediate files
#
# Uses tectonic when it is installed (it fetches missing packages itself),
# otherwise latexmk with XeLaTeX and BibTeX.

ifneq ($(shell command -v tectonic 2>/dev/null),)
TEX = tectonic --keep-logs
else ifneq ($(shell command -v latexmk 2>/dev/null),)
TEX = latexmk -xelatex -interaction=nonstopmode -halt-on-error
else
TEX = $(error needs tectonic or latexmk)
endif

.PHONY: all clean
.DELETE_ON_ERROR:

all: main.pdf

main.pdf: main.tex refs.bib $(wildcard sections/*.tex) $(wildcard figures/*)
	$(TEX) main.tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.fls *.fdb_latexmk *.xdv *.fff *.lof *.ttt
