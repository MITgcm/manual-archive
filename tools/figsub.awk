BEGIN{ nsubstotal =0 ; curfile = ""}

/MITGCM_INSERT_FIGURE_BEGIN/{
 ++nsubstotal;
 if ( curfile != FILENAME ) {
   nsubs=1
   curfile=FILENAME
 } else {
  ++nsubs
 };
 print FILENAME " subsitution number " nsubs;
 subdir = "figsub/"FILENAME"/sub"nsubs
 if ( FILENAME != "-" ) 
  subdir = "figsub/"FILENAME"/sub"nsubs
 else
  subdir = "figsub/STDIN/sub"nsubs
 ;
 system("mkdir -p "subdir)
 subfile_extract=subdir"/extracted_html";
 subfile_startline=subdir"/startline";
 subfile_endline=subdir"/endline";
 print FNR > subfile_startline
}

/MITGCM_INSERT_FIGURE_BEGIN/,/MITGCM_INSERT_FIGURE_END/ {
print $0  > subfile_extract
}

/MITGCM_INSERT_FIGURE_END/{ 
print FNR > subfile_endline
}

{}
END{}
