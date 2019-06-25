all: tcc.pdf

%.pdf: %.tex ref.bib
	pdflatex $^
	bibtex $*.aux
	pdflatex $^
	pdflatex $^
	firefox tcc.pdf

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc
	rm -f *.pdf
