#!/bin/csh -f
nl -ba data | awk 'BEGIN{print "\begin{verbatim}"};{print};END{print "\end{verbatim}"}' 
