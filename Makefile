L2H = -image_type png -split 5 -show_section_numbers -link 2 \
      -address "<a href=mailto:support@mitgcm.org>support@mitgcm.org</a>" \
      -local_icons -noantialias -notransparent -white

default:
	@echo "Targets"
	@echo " make all  - everything in order"
	@echo " make tex  - tex and bibliograohy"
	@echo " make ps   - postscript form of manual"
	@echo " make pdf  - pdf form of manual"
	@echo " make l2h  - latex2html of manual"
	@echo " make html - hypertext form of manual with substitutions"

all:
	make tex
	make ps
	make pdf
	make html

tex:
	TEXINPUTS=.:::texinputs latex manual
	bibtex manual
	TEXINPUTS=.:::texinputs latex manual
	TEXINPUTS=.:::texinputs latex manual | tee warnings

ps: manual.ps

pdf: manual.pdf

manual.ps: manual.dvi
	dvips -Pcmz -Pamz -Ppdf -o manual.ps manual.dvi

manual.pdf: manual.ps
	ps2pdf -dMaxSubsetPct=100 -dCompatibilityLevel=1.2 -dSubsetFonts=true -dEmbedAllFonts=true manual.ps manual.pdf

clean: 
	rm -f manual.{aux,bbl,blg,dvi,log,out,toc} 
Clean:
	make clean
	rm -f manual.{ps,pdf}
	rm -rf manual
	rm -f manual.tz mbkup.tz

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
	make l2h
	make subfigs

l2h:
	latex2html $(L2H) manual

debugl2h:
	latex2html -debug -nodiscard -ldump $(L2H) manual

subfigs:
	cd manual; tar -czf ../mbkup.tz .
	cd manual; ../tools/make_mail_subjects.sh
	cd manual; ../tools/figsub.sh
	cd manual; ../tools/fix_docref_target.sh
	cd manual; tar -czf ../manual.tz .
