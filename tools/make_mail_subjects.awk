BEGIN{nop=0}
/.*TITLE.*/{split($0,pt,">"); split(pt[2],ptt,"<")}
/<a href=mailto:.*/{ 
printf("
<script language="javascript">
<!--
 document.write("<a href=\"mailto:mitgcm-support@mitgcm.org?subject=[MITgcm Manual] section " + document.title + "&body=Comments and questions on page " + document.URL + "\">");
// -->
</script>
\n");
nop=1}
{if ( nop ==0 ) print}
{if ( nop ==1 ) nop=0}
END{}
