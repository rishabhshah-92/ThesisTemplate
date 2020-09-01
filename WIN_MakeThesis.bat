cd %cd%\AllOtherCrap

pdflatex Thesis_Central.tex

rem ######################################
rem ### Chapter-specific compilations ####

bibtex ch01/ch01.tex
bibtex ch01/ch01.aux
bibtex ch02/ch02.tex
bibtex ch02/ch02.aux



rem ######################################
rem ##### Entire thesis compilation ######

bibtex Thesis_Central.tex
pdflatex Thesis_Central.tex
pdflatex Thesis_Central.tex
pdflatex Thesis_Central.tex


rem ######################################
rem ############# Clean up ###############

rem ## The following block of code cleans 
rem ## up the auxiliary files generated 
rem ## during compilation

del /f Abstract.aux
del /f Thanks.aux
del /f Thesis_Central.aux
del /f Thesis_Central.lof
del /f Thesis_Central.log
del /f Thesis_Central.lot
del /f Thesis_Central.out
del /f Thesis_Central.toc
del /f TitleAndCopyright.aux

rem ##Chapter-specific cleanup
del /f ch01/ch01.aux
del /f ch01/ch01.bbl
del /f ch01/ch01.blg
del /f ch02/ch02.aux
del /f ch02/ch02.bbl
del /f ch02/ch02.blg

rem ######################################
rem ### Move Thesis to root folder #######

move Thesis_Central.pdf ..\MyThesis.pdf
start ..\MyThesis.pdf

exit