.SUFFIXES: .eps .pdf .gp .fig

all:
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

.fig.eps: %.fig macros.tex
	fig2dev -L pstex $< $*.pstex
	fig2dev -L pstex_t -p $*.pstex $< $*.pstex_t
	./pstex2eps.sh $*
#	rm -f $*.pstex $*.pstex_t

.gp.eps: %.gp %.list macros.tex
	gnuplot $<
	latex $*.tex
	dvips -o $*.eps `basename $*`.dvi
	rm -f `basename $*`.{dvi,aux,log,out} $*.tex $*-inc.eps


.eps.pdf: %.eps
	./epstopdf $*.eps


