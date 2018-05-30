include $(HOME)/LaTeX_templates/Makefile

%.pdf:	%.tex
	pdflatex $*
	pdflatex $*

%.svg:	%.pdf
	pdf2svg $*.pdf $*.svg

sin.pdf:	sin.gpt
		gnuplot sin.gpt
TMPs += sin.pdf

article.pdf:	article.tex sin.pdf
		pdflatex article
		bibtex article
		pdflatex article
TMPs += article.pdf

article.svg:	article.pdf
TMPs += article.svg

minimal.pdf:	minimal.tex
TMPs += minimal.pdf

minimal.svg:	minimal.pdf
TMPs += minimal.svg

letter.pdf:	letter.tex
TMPs += letter.pdf

letter.svg:	letter.pdf
TMPs += letter.svg

report.pdf:	report.tex
TMPs += report.pdf

report1.pdf:	report.pdf
	gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage=1 -dLastPage=1 -sOutputFile=report1.pdf report.pdf
TMPs += report1.pdf

report2.pdf:	report.pdf
	gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage=2 -dLastPage=2 -sOutputFile=report2.pdf report.pdf
TMPs += report2.pdf

report3.pdf:	report.pdf
	gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage=3 -dLastPage=3 -sOutputFile=report3.pdf report.pdf
TMPs += report3.pdf

report1.svg:	report.pdf
		pdf2svg report.pdf report1.svg 1
TMPs += report1.svg

report2.svg:	report.pdf
		pdf2svg report.pdf report2.svg 2
TMPs += report2.svg

report3.svg:	report.pdf
		pdf2svg report.pdf report3.svg 3
TMPs += report3.svg

slides.pdf:	slides.tex
		pdflatex slides; pdflatex slides
TMPs += slides.pdf

slides1.pdf:	slides.pdf
	gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage=1 -dLastPage=1 -sOutputFile=slides1.pdf slides.pdf
TMPs += slides1.pdf

slides2.pdf:	slides.pdf
	gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage=2 -dLastPage=2 -sOutputFile=slides2.pdf slides.pdf
TMPs += slides2.pdf

slides1.svg:	slides.pdf
		pdf2svg slides.pdf slides1.svg 1
TMPs += slides1.svg

slides2.svg:	slides.pdf
		pdf2svg slides.pdf slides2.svg 2
TMPs += slides2.svg

cmbright.pdf:	cmbright.tex
TMPs += cmbright.pdf

cmbright.svg:	cmbright.pdf
TMPs += cmbright.svg

cmbright-part.pdf:	cmbright-part.tex
TMPs += cmbright-part.pdf

cmbright-part.svg:	cmbright-part.pdf
TMPs += cmbright-part.svg

series.pdf:	series.tex
TMPs += series.pdf

series.svg:	series.pdf
TMPs += series.svg

shapes.pdf:	shapes.tex
TMPs += shapes.pdf

shapes.svg:	shapes.pdf
TMPs += shapes.svg

comments.pdf:	comments.tex
TMPs += comments.pdf

comments.svg:	comments.pdf
TMPs += comments.svg

table.pdf:	table.tex
TMPs += table.pdf

table.svg:	table.pdf
TMPs += table.svg

itemize.pdf:	itemize.tex
TMPs += itemize.pdf

itemize.svg:	itemize.pdf
TMPs += itemize.svg

enumerate.pdf:	enumerate.tex
TMPs += enumerate.pdf

enumerate.svg:	enumerate.pdf
TMPs += enumerate.svg

description.pdf:	description.tex
TMPs += description.pdf

description.svg:	description.pdf
TMPs += description.svg

size.pdf:	size.tex
TMPs += size.pdf

size.svg:	size.pdf
TMPs += size.svg

size_class_10.pdf:	size_class_10.tex
TMPs += size_class_10.pdf

size_class_10.svg:	size_class_10.pdf
TMPs += size_class_10.svg

size_class_12.pdf:	size_class_12.tex
TMPs += size_class_12.pdf

size_class_12.svg:	size_class_12.pdf
TMPs += size_class_12.svg

size_fontsize.pdf:	size_fontsize.tex
TMPs += size_fontsize.pdf

size_fontsize.svg:	size_fontsize.pdf
TMPs += size_fontsize.svg

centering.pdf:	centering.tex
TMPs += centering.pdf

centering.svg:	centering.pdf
TMPs += centering.svg

verbatim.pdf:	verbatim.tex
TMPs += verbatim.pdf

verbatim.svg:	verbatim.pdf
TMPs += verbatim.svg

testing_families.pdf:	testing_families.tex
TMPs += testing_families.pdf

testing_families.svg:	testing_families.pdf
TMPs += testing_families.svg

math.pdf:	math.tex
TMPs += math.pdf

math.svg:	math.pdf
TMPs += math.svg

site.pdf:	site.tex
TMPs += site.pdf

site.svg:	site.pdf
TMPs += site.svg

problem.pdf:	problem.tex
TMPs += problem.pdf

problem.svg:	problem.pdf
TMPs += problem.svg

picture.pdf:	picture.tex
TMPs += picture.pdf

picture.svg:	picture.pdf
TMPs += picture.svg

include_fig.pdf:	include_fig.tex
TMPs += include_fig.pdf

include_fig.svg:	include_fig.pdf
TMPs += include_fig.svg

arithmetic.pdf:	arithmetic.tex
TMPs += arithmetic.pdf

arithmetic.svg:	arithmetic.pdf
TMPs += arithmetic.svg

texput.tex:	texput.tex.m4 $(TMPs)
		m4 < texput.tex.m4 > texput.tex


