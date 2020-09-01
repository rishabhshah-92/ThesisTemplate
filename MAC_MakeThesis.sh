#!/bin/bash
cd "$(dirname "$0")"
cd AllOtherCrap

pdflatex Thesis_Central.tex



######################################
### Chapter-specific compilations ####

bibtex ch01/ch01.tex
bibtex ch01/ch01.aux
bibtex ch02/ch02.tex
bibtex ch02/ch02.aux



######################################
##### Entire thesis compilation ######

bibtex Thesis_Central.tex
pdflatex Thesis_Central.tex
pdflatex Thesis_Central.tex
pdflatex Thesis_Central.tex



######################################
############# Clean up ###############

## The following block of code cleans 
## up the auxiliary files generated 
## during compilation
rm Abstract.aux
rm Thanks.aux
rm Thesis_Central.aux
rm Thesis_Central.lof
rm Thesis_Central.log
rm Thesis_Central.lot
rm Thesis_Central.out
rm Thesis_Central.toc
rm TitleAndCopyright.aux

##Chapter-specific cleanup
rm ch01/ch01.aux
rm ch01/ch01.bbl
rm ch01/ch01.blg
rm ch02/ch02.aux
rm ch02/ch02.bbl
rm ch02/ch02.blg

######################################
### Move Thesis to root folder #######

mv Thesis_Central.pdf ../MyThesis.pdf
open ../MyThesis.pdf

exit