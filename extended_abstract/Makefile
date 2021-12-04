# ---------------------------------------------------------
# type "make" command in Unix to create ExtendedAbstract.pdf file 
# ---------------------------------------------------------

# Main filename
MAIN=ExtendedAbstract

# ---------------------------------------------------------
FIG_DIR=../Figures

all: figures
	pdflatex ${MAIN}
	bibtex   ${MAIN}
	pdflatex ${MAIN}
	pdflatex ${MAIN}
	evince ${MAIN}.pdf &

figures:
	make -C $(FIG_DIR)
	cp $(FIG_DIR)/*.png images
	cp $(FIG_DIR)/*.pdf images

clean:
	rm -rf ./images/*
	make -C $(FIG_DIR) clean
	(rm -rf *.aux *.bbl *.blg *.log)

veryclean: clean
	(rm -rf *.pdf)
