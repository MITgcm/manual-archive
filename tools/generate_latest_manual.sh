#!/bin/csh -f

#
# Run this script on twain.lcs.mit.edu
#

#
# Script checks out latest manual from CVS
# Builds tex, ps, pdf and html
# Installs html under http://mitgcm.org/sealion-manual-latest
#

# Check out the manual
setenv CVSROOT /u/u0/gcmpack
cd /scratch/cnh/RELEASE1/manual/HEAD
\rm -fr /scratch/cnh/RELEASE1/manual/HEAD/*
ln -s /scratch/cnh/l2h/bin/latex2html latex2html
setenv LATEX2HTMLDIR /scratch/cnh/l2h
cvs co -d . -P mitgcmdoc

# latex document
make tex

# create postscript
make ps

# create pdf
make pdf

# create html
make html

# install under http://mitgcm.org/sealion-manual-latest
cd manual
\rm -fr /u/u0/httpd/html/sealion-manual-latest
mkdir /u/u0/httpd/html/sealion-manual-latest
tar -cf - . | tcsh -c "cd /u/u0/httpd/html/sealion-manual-latest; tar -xf -"
cd /u/u0/httpd/html/sealion-manual-latest

# change e-mail link to include section number etc...
cp ~cnh/make_mail_subjects* .
./make_mail_subjects.sh
