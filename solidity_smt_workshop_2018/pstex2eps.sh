#!/bin/bash

if (($# != 1)) ; then
    echo "Usage: pstex2eps.sh file";
    exit;
fi
args=($@)
file=${args[$# - 1]}
echo "
\documentclass{article}
\usepackage{graphics}
\usepackage{color}
\usepackage{epsfig}
\input{macros}
\begin{document}
\pagestyle{empty}
\input{$file.pstex_t}
\end{document}" > TEMP.tex
pdflatex -output-format=dvi TEMP.tex
dvips -E -o $file".eps" TEMP.dvi
rm -f TEMP.{tex,aux,dvi,log,out}
