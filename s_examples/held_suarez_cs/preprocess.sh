#!/bin/sh


here=`pwd`
tutor=`basename $here`
echo 'tutorial:' $tutor
src='../../../../wrk57/verification/tutorial_'$tutor

if test -d $src
then
#---------------------------------------------------------------------
  cd $src
  listI=`ls input/eedata input/data input/data.* code/packages.conf code/*.h code/*.F`
  cd $here

  echo ' Import from:' $src ' files:'
  for xx in $listI
  do
   echo '  ' $xx
   if test -f $src/$xx ; then
    echo "\begin{verbatim}" > $xx.tex
    nl -ba $src/$xx >> $xx.tex
    echo "\end{verbatim}" >> $xx.tex
   else echo 'file:' $src/$xx 'not found'
   fi
  done

#---------------------------------------------------------------------
  listT=`ls *.templ`

  echo ' Generate from template:'
  for xx in $listT
  do
    zz=`echo $xx | sed 's/\.templ//'`
  #- file name of the corresponding data file:
    yy=`echo $zz | sed 's/inp_/input\//'  | sed 's/cod_/code\//'`
    #echo 'xx='$xx ' ; yy='$yy
    if test -f $src/$yy ; then
      ../../../tools/replace_line_nb $xx $src/$yy
      echo '  ' `ls $zz.tex`'	<-- ' $xx '(using:' $yy')'
    else 
      if test -f $zz.tex ; then :
      else 
        touch $zz.tex 
      fi
      echo 'file:' $src/$yy 'not found'
    fi
  done

#---------------------------------------------------------------------
else
  echo 'dir:' $src 'is missing'
fi

exit
