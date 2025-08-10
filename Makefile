.PHONY: all latex bibtex view nonstop clean distclean

TARGET=arbeit
SOURCE=$(TARGET).tex
NONSTOP=-interaction nonstopmode -file-line-error

all:
	pdflatex $(SOURCE)
# 	makeindex -s $(TARGET).ist -o $(TARGET).gls $(TARGET).glo
	biber $(TARGET)
	pdflatex $(SOURCE)
	pdflatex $(SOURCE)
	pdflatex $(SOURCE)

latex:
	pdflatex $(SOURCE)
	pdflatex $(SOURCE)

bibtex:
	biber $(TARGET)

view:
	open $(TARGET).pdf &
nonstop:
	max_print_line=1048576 pdflatex $(NONSTOP) $(SOURCE)
	bibtex $(TARGET)
	max_print_line=1048576 pdflatex $(NONSTOP) $(SOURCE)
	max_print_line=1048576 pdflatex $(NONSTOP) $(SOURCE)

clean:
	rm -f $(TARGET).aux $(TARGET).bbl $(TARGET).blg $(TARGET).log $(TARGET).out $(TARGET).fdb_latexmk $(TARGET).fls

distclean:clean
	rm -f $(TARGET).pdf
