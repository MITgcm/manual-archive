#!/bin/csh -f
set ofile = `echo ${argv[1]}_labels`
echo ${argv[1]}_labels
awk -f ../tools/labels.awk ${argv[1]} > ${ofile}
