PAPER=A_Survey_of_Dynamic_Binary_Translation_and_Optimization

default: paper

paper: 
	pdflatex -synctex=1 -interaction=nonstopmode $(PAPER).tex
	bibtex $(PAPER)
	pdflatex -synctex=1 -interaction=nonstopmode $(PAPER).tex
	pdflatex -synctex=1 -interaction=nonstopmode $(PAPER).tex
	pdflatex -synctex=1 -interaction=nonstopmode $(PAPER).tex

tidy:
	rm -f $(PAPER).aux $(PAPER).bbl $(PAPER).bib $(PAPER).blg $(PAPER).log $(PAPER).out $(PAPER).synctex.gz

clean: tidy
	rm -f $(PAPER).pdf