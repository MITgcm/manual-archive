#!/bin/sh

MAPPING="mapping.txt"

# these are not quite recompiled oddballs
# afe: now done properly
#echo "manual http://mitgcm.org/sealion/" >> $MAPPING
#echo "hydrodynamics http://paoc.mit.edu/cmi/development/hydrodynamics.htm" >> $MAPPING

grep -r CMIREDIR *.html | \
awk 'BEGIN { FS = ":" } ;
           { HTMLPATH = "http://mitgcm.org/sealion/online_documents/" } ;
           { print $3 " " HTMLPATH $1}' >> $MAPPING

