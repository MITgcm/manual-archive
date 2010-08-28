#! /usr/bin/env bash

# $Header: /u/gcmpack/manual/tools/latex_warning.sh,v 1.1 2010/08/28 22:54:47 jmc Exp $
# $Name:  $

echo ' ' `basename $0` ': extract warnings from file:' $1 'into:' $2

sed -n '/ Warning/,/^ *$/p' $1 | sed '/^ *$/d' > $2

