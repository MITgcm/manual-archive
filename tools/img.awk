BEGIN{captionDone=0}
/<CAPTION/,/<\/CAPTION>/{captionDone=1}
/<TR><TD>/,/<\/TD><\/TR>/{if ( captionDone==1 ) print}
END{}
