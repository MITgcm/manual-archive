#!/bin/csh -f
#
# \hthtmllink in latex won't allow target= modifier.
# So we add it ourselves here, to all the docref
# hyperlinks. The "docref" links are the links to 
# browseable code tree. They have the format
# <A HREF="somepath_docref.html">
# we chaneg them to
# <A HREF="somepath_docref.html" target=idontexist>
#
foreach f ( node*.html )

 cat $f                        | \
  sed s'/docref\.html\"/docref\.html\" target=idontexist/' > $f.tmp
  \cp $f.tmp $f
  \rm $f.tmp
end
