#!/bin/csh -f
set ofile = `echo ${argv[1]}_fignum`
echo ${argv[1]}_fignum
awk -f ../tools/fignum.awk ${argv[1]} | \
sed s'/.*\(Figure[^<]*\).*/\1/'         \
> ${ofile}
