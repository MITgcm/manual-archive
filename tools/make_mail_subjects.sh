#!/bin/csh -f
foreach f ( *.html )
 
  cat $f | awk -f make_mail_subjects.awk >$f.comment
  mv $f.comment $f

end
