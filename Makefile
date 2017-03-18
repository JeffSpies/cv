.PHONY: cv.pdf all clean

all: cv.pdf

cv.pdf: cv.tex jspiescv.bib
	latexmk -pdf -bibtex -use-make cv.tex

clean:
	latexmk -C