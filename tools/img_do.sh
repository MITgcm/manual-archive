#!/bin/csh -f
set ofile = `echo ${argv[1]}_img`
echo ${argv[1]}_img
awk -f ../tools/img.awk ${argv[1]} > ${ofile}
