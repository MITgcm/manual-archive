#L2H = -image_type gif -split 5 -show_section_numbers -link 2 \
#      -address "<a href=mailto:support@mitgcm.org>support@mitgcm.org</a>" \
#      -local_icons -noantialias -notransparent -white

L2H = -image_type png -split 5 -show_section_numbers -link 2 \
      -address "<a href=mailto:support@mitgcm.org>mitgcm-support@dev.mitgcm.org</a>" \
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
	make ps.gz
	make html

tex: manual.dvi

ps: manual.ps

ps.gz: manual.ps
	gzip -9 -c manual.ps > manual.ps.gz

pdf: manual.pdf

#eh3 WARNING: due to the make dependencies, using the following rule will 
#eh3   *always* result in running the "manual.dvi" and "l2h.tgz" rules
#eh3   *TWICE* due to the "*/*.ps" entry in the dependency list!
#eh3 html:
#eh3 	make l2h
#eh3 	make subfigs
html:
	make l2h
	cd manual; ../tools/make_mail_subjects.sh
	cd manual; ../tools/figsub.sh
	cd manual; ../tools/fix_docref_target.sh
	tar -czf manual.tgz manual

l2h: l2h.tgz

subfigs: manual.tgz

manual.dvi: *.tex */*.tex */*/*/*.tex */*.ps */*.eps */*/*/*.eps
	TEXINPUTS=.:::texinputs latex manual
	bibtex manual
	TEXINPUTS=.:::texinputs latex manual
	TEXINPUTS=.:::texinputs latex manual | tee warnings

manual.ps: manual.dvi
	dvips -Pcmz -Pamz -o manual.ps manual.dvi

manual.pdf: manual.ps
	ps2pdf -dMaxSubsetPct=100 -dCompatibilityLevel=1.2 -dSubsetFonts=true -dEmbedAllFonts=true manual.ps manual.pdf

clean: 
	rm -f manual.{aux,bbl,blg,dvi,log,out,toc} warnings l2h.log
Clean:
	make clean
	rm -f manual.{ps,pdf,ps.gz}
	rm -rf manual
	rm -f manual.{tz,tgz} mbkup.{tz,tgz} l2h.{tz,tgz}

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

debugl2h:
	/usr/bin/latex2html -debug -nodiscard -ldump $(L2H) manual

l2h.tgz: manual.dvi
	/usr/bin/latex2html $(L2H) manual | tee l2h.log
	tar -czf l2h.tgz manual

manual.tgz: l2h.tgz
	cd manual; ../tools/make_mail_subjects.sh
	cd manual; ../tools/figsub.sh
	cd manual; ../tools/fix_docref_target.sh
	tar -czf manual.tgz manual
