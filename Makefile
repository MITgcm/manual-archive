default:
	@echo "Targets"
	@echo " make all  - just the tex "
	@echo " make tex  - tex and bibliograohy"
	@echo " make ps   - postscript form of manual"
	@echo " make pdf  - pdf form of manual"
	@echo " make html - hypertext form of manual"
all:
	make tex

tex:
	latex manual
	bibtex manual
	latex manual
	latex manual | tee warnings
ps: manual.ps
pdf: manual.pdf

manual.ps: manual.dvi
	dvips -Pcmz -Pamz -Ppdf -o manual.ps manual.dvi

manual.pdf: manual.ps
	ps2pdf -dMaxSubsetPct=100 -dCompatibilityLevel=1.2 -dSubsetFonts=true -dEmbedAllFonts=true manual.ps manual.pdf

# Note - the noantialias option here does not affect the gif images
#        that are generated. However, it does make ppmquant to run in
#        a way that leaves out the -floyd option. This option
#        causes problems with some figures. If you really want
#        to use -antialias then you need to turn off the -floyd option.
#        To do this either 
#        1. edit the pstoimg script that comes with latex2html
#        2. rename /usr/bin/ppmquant to /usr/bin/ppmquant.orig and
#           create a shell script that calls /usr/bin/ppmquant.orig
#           with just the option -256.
#           e.g.
#           mv /usr/bin/ppmquant /usr/bin/ppmquant.orig
#           cat > /usr/bin/ppmquant <<!
#           #!/bin/csh -f
#           /usr/bin/ppmquant.orig 256
#           !


html:
	latex2html -image_type gif -split 5 -show_section_numbers -link 2 -address "<a href=mailto:support@mitgcm.org>support@mitgcm.org</a>" -local_icons -noantialias -white manual

html2:
	latex2html -image_type gif -split 5 -show_section_numbers -link 2 -address "<a href=mailto:support@mitgc,.org>support@mitgcm.org</a>" -local_icons -white -debug m2
