#!/bin/csh -f
foreach f ( node*.html )

  cat ../tools/make_mail_subjects.ed | ed $f

end
