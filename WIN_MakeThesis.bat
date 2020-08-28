cd %cd%\AllOtherCrap

pdflatex Thesis_Central.tex
bibtex ch01/ch01.tex
bibtex ch01/ch01.aux
bibtex Thesis_Central.tex
pdflatex Thesis_Central.tex
pdflatex Thesis_Central.tex
pdflatex Thesis_Central.tex

move Thesis_Central.pdf ..\MyThesis.pdf
start ..\MyThesis.pdf

exit