# ---------------------------------------------------------
# type "make" command in Unix to create the PDF file 
# ---------------------------------------------------------

# Main filename
FILE=Thesis

# ---------------------------------------------------------
FIG_DIR = ./Figures
EXT_ABS_DIR = ./extended_abstract
PRES_DIR = ./presentation

all: figures
	pdflatex  ${FILE}
	makeindex $(FILE).nlo -s nomencl.ist -o $(FILE).nls
	#makeindex $(FILE).glo -s $(FILE).ist -o $(FILE).gls -t $(FILE).glg
	bibtex ${FILE}
	pdflatex  ${FILE}
	pdflatex  ${FILE}
	evince ${FILE}.pdf &

# generate figures from libreOffice files
figures:
	make -C $(FIG_DIR)

#generate extended abstract
extended:
	make -C $(EXT_ABS_DIR) 

#generate presentation
presentation:
	make -C $(PRES_DIR)
clean:
	make -C $(FIG_DIR) clean
	make -C $(EXT_ABS_DIR) clean
	(rm -rf *.aux *.bbl *.blg *.glg *.glo *.gls *.ilg *.ist *.lof *.log *.lot *.nlo *.nls *.out *.toc)

veryclean:
	make clean
	rm -f *~ *.*%
	rm -f $(FILE).pdf $(FILE).ps

