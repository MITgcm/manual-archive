all: 
	make tex

tex:
	latex manual
	latex manual

html:
	/usr/local/pkg/latex2html/bin/latex2html -image_type gif -split 5 -show_section_numbers -link 2 -address "<a href=mailto:support@mitgc,.org>support@mitgcm.org</a>" manual
