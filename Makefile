PDFLATEX = pdflatex
BIBTEX   = bibtex  

MKDIR   = mkdir
MDFLAGS = -p
MV      = mv
CP      = cp
RM      = rm
RMFLAGS = -rf

main: pdflatex clean
	
pdflatex: thesis.tex 
	$(PDFLATEX) thesis
	$(BIBTEX) thesis
	$(PDFLATEX) thesis
	$(PDFLATEX) thesis

clean: 
	$(RM) $(RMFLAGS) *.aux *.blg *.bbl *.log *.toc *.out


