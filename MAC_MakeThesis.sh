#!/bin/bash
cd "$(dirname "$0")"
cd AllOtherCrap

pdflatex Thesis_Central.tex
bibtex ch01/ch01.tex
bibtex ch01/ch01.aux
bibtex Thesis_Central.tex
pdflatex Thesis_Central.tex
pdflatex Thesis_Central.tex
pdflatex Thesis_Central.tex

mv Thesis_Central.pdf ../MyThesis.pdf
open ../MyThesis.pdf

exit