BEGIN{nop=0}
/.*TITLE.*/{split($0,pt,">"); split(pt[2],ptt,"<")}
/<a href=mailto:.*/{ 
              printf("<a href=\"mailto:support@mitgcm.org");
              nf=split($0,ma,">");
              printf("?subject=[MITgcm Manual] %s",ptt[1]);
              printf("&body=Feedback on section - %s",ptt[1]);
              printf("\">"); 
              for(i=2;i<=nf;i++) {printf("%s",ma[i])};
              printf(">"); 
              printf("\n");
              nop=1}
{if ( nop ==0 ) print}
{if ( nop ==1 ) nop=0}
END{}
