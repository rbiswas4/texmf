NAME ?= notes


bib/${NAME}.bib: ${NAME}.tex
	adstex ${NAME}.tex latex/*.tex -o bib/${NAME}.bib

pdf: ${NAME}.tex
	pdflatex ${NAME}
	bibtex ${NAME}
	pdflatex ${NAME}
	pdflatex ${NAME}

all: bib/${NAME}.bib pdf
tidy:
	rm -f *.log *.aux *.out *.dvi *.synctex.gz *.fdb_latexmk *.fls
	rm -f *.bbl *.blg

clean: tidy
	rm -f ${outname}.pdf ${outname}.tar.gz ${NAME}.pdf

nuke: clean
	rm -f bib/${NAME}.bib
