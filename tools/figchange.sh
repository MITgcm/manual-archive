#!/bin/csh -f
set flist = ( `find figsub -name '*.html' -maxdepth 1 ` )

# Work through all the figsub .html subdirectories
foreach f ( $flist )
 set fnode = `echo $f | sed s'/figsub\/\([^\/]*\).*/\1/'`
 set fdir = ( figsub/$fnode )
 echo Doing figures for node $fnode using directory $fdir

 # Work through all the subs for each node
 # Must work in reverse numeric order to allow ed edits
 # at the end.
 echo $fdir/sub* | sed s'/[^ ]*\/sub\([0-9]*\)/\1/g' \
             | tr ' ' '\n' | sort -n -r > figsub/temp-slist.$$
 set slist = `cat figsub/temp-slist.$$`
 \rm figsub/temp-slist.$$
 foreach sn ( $slist )
  set s = ( ${fdir}/sub${sn} )
  set snum = `echo $s | sed s'/.*sub\(.*\)/\1/'`
  set sline = `cat $s/startline`
  set eline = `cat $s/endline`
  echo " "substitution number $snum from line $sline to $eline
  set newfigdir = `head -1 $s/extracted_html | awk '{print $2}'`
  echo " "substitute figure directory is ../on-line-figs/$newfigdir

  # 
  # o Look for substitute figure directory (named according to word after MITGCM_INSERT_.... )
  #   under the directory ../on-line-figs
  #
  if ( ! -d ../on-line-figs/$newfigdir ) then
   echo " **"directory ../on-line-figs/$newfigdir not found, skipping substitution
   echo " "
   break
  endif

  # 
  # o Look for substitute img part of the html. This is in file img.html within
  #   the substitute figure directory. If its not found we used the original
  #   extract in extracted_html_img. Substituting full img part can be
  #   used to replace static image with animated gif or an applet.
  #
  if ( -f ../on-line-figs/$newfigdir/img.html ) then
   echo " "substitute image html ../on-line-figs/$newfigdir/img.html wll be used
   set subimfile = ../on-line-figs/$newfigdir/img.html
  else
   echo " "no substitute img, original img html $s/extracted_html_img will be used
   set subimfile = $s/extracted_html_img
  endif

  # 
  # o Look for substitute caption part of the html. This is in file caption.html within
  #   the substitute figure directory. If its not found we used the original
  #   extract in extracted_html_caption. Substituting full caption can be used to
  #   create totally different cption for on-line doc.
  #
  if ( -f ../on-line-figs/$newfigdir/caption.html ) then
   echo " "substitute caption html ../on-line-figs/$newfigdir/caption.html wll be used
   set subcapfile = ../on-line-figs/$newfigdir/caption.html
  else
   echo " "no substitute caption, original caption html $s/extracted_html_caption will be used
   set subcapfile = $s/extracted_html_caption
  endif

  #
  # o Look for simple URL insert. This is used if we just want figure
  #   to be a hyperlink and leave evrything else unchanged.
  #   Note - having a scheme for putting the URL in the source latex
  #          would be nice but, many URLs (especially ingrid ones) contains
  #          embedded % characters. These are taken as comments and discarded
  #          even within a rawhtml block. So instead we opt to put the
  #          URL in a file.
  #
  if ( -f ../on-line-figs/$newfigdir/URL ) then
   set imgurl = `cat ../on-line-figs/$newfigdir/URL`
  else
   set imgurl = ""
  endif

  # Insert replacement into node
  # Insert puts in original labels, modified or original caption and
  # img. The fignum from the original is always used. If a modified caption
  # is used then it needs to contain a dummy figure number block that
  # will be substituted.
  set fnum  = `cat $s/extracted_html_fignum`
  set stnum = `cat $s/startline`
  set fnnum = `cat $s/endline`
  echo ${stnum},${fnnum}c > temp-figchange.$$
  echo '<!--- 'MITGCM_INSERT_FIGURE_BEGIN ${newfigdir}' -->' >> temp-figchange.$$
  echo '<P></P>' >> temp-figchange.$$
  cat  $s/extracted_html_labels >> temp-figchange.$$
  echo '<TABLE>' >> temp-figchange.$$
  cat  $subcapfile                   | \
   sed s'/Figure [^:]*:/'"$fnum"'/'    \
              >> temp-figchange.$$
  cat  $subimfile              >> temp-figchange.$$
  echo '</TABLE>' >> temp-figchange.$$
  echo '</DIV><P></P>' >> temp-figchange.$$
  echo '<!--- 'MITGCM_INSERT_FIGURE_END' -->' >> temp-figchange.$$
  echo '.' >> temp-figchange.$$
  echo w >> temp-figchange.$$
  echo q >> temp-figchange.$$
  cp temp-figchange.$$ figsub/temp-figchange
  \rm temp-figchange.$$
  # Insert the img url if there is one.
  if ( "$imgurl[1]" != "" ) then
    echo '/\/CAPTION/'         > figsub/ed2
    echo '/TD/'               >> figsub/ed2
    echo 's/TD>/TD>\'         >> figsub/ed2
    echo '/'                  >> figsub/ed2
    echo 'i'                  >> figsub/ed2
    echo '<A href='"$imgurl"'>' >> figsub/ed2
    echo '.'                  >> figsub/ed2
    echo '/TD/'               >> figsub/ed2
    echo 's/<\/TD>/\'         >> figsub/ed2
    echo '<\/TD>/'            >> figsub/ed2
    echo i                    >> figsub/ed2
    echo '</A>'               >> figsub/ed2
    echo '.'                  >> figsub/ed2
    echo 'w'                  >> figsub/ed2
    echo 'q'                  >> figsub/ed2
    cat figsub/ed2 | ed figsub/temp-figchange
  endif
  cat figsub/temp-figchange | ed $fnode
 end

end
