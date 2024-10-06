#!/bin/bash

biber plantilla_tfg_2019
pdflatex plantilla_tfg_2019.tex
biber plantilla_tfg_2019
pdflatex plantilla_tfg_2019.tex
pdflatex plantilla_tfg_2019.tex
pdflatex plantilla_tfg_2019.tex

for i in $(ls | grep plantilla | grep -v tex | grep -v xmpdata | grep -v pdf); do rm -f $i; done
mkdir -p build
mv plantilla_tfg_2019.pdf build/report.pdf
