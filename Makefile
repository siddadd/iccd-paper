PAPER = template
TEX = $(wildcard *.tex)
BIB = library.bib
FIGS = $(wildcard figures/*.pdf figures/*.png graphs/*.pdf graphs/*.png)

.PHONY: all clean

$(PAPER).pdf: $(TEX) $(BIB) $(FIGS)
	echo $(FIGS)
	latex $(PAPER)
	bibtex $(PAPER)
	latex $(PAPER)
	latex $(PAPER)
	dvipdf $(PAPER).dvi

clean:
	rm -f *.aux *.bbl *.blg *.log *.out $(PAPER).pdf

