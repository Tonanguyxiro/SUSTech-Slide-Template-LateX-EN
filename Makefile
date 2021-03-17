all: doc

# ifeq ($(OS),Windows_NT)
#   # on Windows
#   RM = cmd //C del
# else
#   # on Unix/Linux
  RM = rm -f
# endif

.PHONY: clean doc

doc:
	xelatex -shell-escape main.tex
	biber main
	xelatex -shell-escape main.tex
	xelatex -shell-escape main.tex

clean:
	$(RM) *.log *.aux *.bbl *.blg *.synctex.gz *.out *.toc *.lof *.idx *.ilg *.ind *.pdf *.bbl *.bcf *.blg *-blx.aux *-blx.bib *.run.xml *.nav *.pre *.snm *.vrb
	$(RM) -r _minted*
