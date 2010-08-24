#
#  $Header: /u/gcmpack/manual/s_examples/held_suarez_cs/Makefile,v 1.2 2010/08/24 20:51:01 jmc Exp $
#  $Name:  $
#

TEMPLATE_FILES = \
cod_packages.conf.templ \
inp_data.pkg.templ \
inp_data.shap.templ \
inp_data.templ

TEX_FILES = $(TEMPLATE_FILES:.templ=.tex)

.SUFFIXES:
.SUFFIXES: .templ .tex

.templ.tex :
	-./preprocess.sh

all : $(TEX_FILES)

$(TEX_FILES) : $(TEMPLATE_FILES)

clean :
	-rm -f $(TEX_FILES)

Clean:
	@make clean
	-rm -f input/*.tex code/*.tex

