#
#  $Header: /u/gcmpack/manual/s_examples/global_oce_latlon/Makefile,v 1.2 2011/05/08 16:24:24 jmc Exp $
#  $Name:  $
#

TEMPLATE_FILES = \
cod_SIZE.h.templ \
inp_data.templ

TEX_FILES = $(TEMPLATE_FILES:.templ=.tex)

.SUFFIXES:
.SUFFIXES: .templ .tex

.templ.tex :
	-../../tools/preprocess.sh

all : $(TEX_FILES)

$(TEX_FILES) : $(TEMPLATE_FILES)

clean :
	-rm -f $(TEX_FILES)

Clean:
	@make clean
	-rm -f input/*.tex code/*.tex

