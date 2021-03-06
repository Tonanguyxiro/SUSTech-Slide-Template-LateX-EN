all:	clean; xelatex -shell-escape main.tex

# ifeq ($(OS),Windows_NT)
#   # on Windows
#   RM = cmd //C del
# else
#   # on Unix/Linux
  RM = rm -f
# endif

clean:
	$(RM) *.log *.aux *.bbl *.blg *.synctex.gz *.out *.toc *.lof *.idx *.ilg *.ind *.pdf *.bbl *.bcf *.blg *-blx.aux *-blx.bib *.run.xml *.nav *.pre *.snm *.vrb
	$(RM) -r _minted*
