#!/bin/bash

if [ $# -eq 0 ]; then
    n=3
else 
    n=$1
fi

printf "number of compilations = $n\n"

pdflatex plantilla_tfg_2019.tex
biber plantilla_tfg_2019
for i in $(seq 0 $n); do pdflatex plantilla_tfg_2019.tex; done

# delete aux files
for i in $(ls | grep plantilla | grep -v tex | grep -v xmpdata | grep -v pdf); do rm -f $i; done

mkdir -p build
mv plantilla_tfg_2019.pdf build/report.pdf
