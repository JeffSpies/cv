.PHONY: cv.pdf all clean

all: cv.pdf

cv.pdf: cv.tex jspiescv.bib
	latexmk -pdf -bibtex -use-make -recorder cv.tex

clean:
	latexmk -C