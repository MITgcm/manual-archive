#!/bin/csh -f
set ofile = `echo ${argv[1]}_caption`
echo ${argv[1]}_caption
awk -f ../tools/caption.awk ${argv[1]} > ${ofile}
