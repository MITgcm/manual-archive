all:
	make tex

tex:
	latex manual
	bibtex manual
	latex manual
	latex manual
ps: manual.ps
pdf: manual.pdf

manual.ps: manual.dvi
	dvips -Pcmz -Pamz -Ppdf -o manual.ps manual.dvi

manual.pdf: manual.ps
	ps2pdf -dMaxSubsetPct=100 -dCompatibilityLevel=1.2 -dSubsetFonts=true -dEmbedAllFonts=true manual.ps manual.pdf

html:
	latex2html -image_type gif -split 5 -show_section_numbers -link 2 -address "<a href=mailto:support@mitgc,.org>support@mitgcm.org</a>" manual
