# ---------------------------------------------------------
# type "make" command in Unix to create ExtendedAbstract.pdf file 
# ---------------------------------------------------------

# Main filename
MAIN=presentation

# ---------------------------------------------------------
FIG_DIR=./images

all: figures
	pdflatex ${MAIN}
	biber ${MAIN}
	# bibtex   ${MAIN}
	pdflatex ${MAIN}
	pdflatex ${MAIN}
	evince ${MAIN}.pdf &

figures:
	make -C $(FIG_DIR)

clean:
	make -C $(FIG_DIR) clean
	(rm -rf *.aux *.bbl *.blg *.log *.nav *.out *.snm *.toc *.bcf *.xml *.vrb)

veryclean: clean
	(rm -rf *.pdf)
