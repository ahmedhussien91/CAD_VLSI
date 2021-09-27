#include <genpat.h>
#include <stdio.h>

/* converts an integer to text characters required by genpat functions */
char *inttostr(entier)
	int entier;
{
 char *str;
 str = (char *) mbkalloc (32 * sizeof (char));
 sprintf (str,"%d",entier);
 return(str);
}

/*-----------------------------*/
/* start of the description    */
/*-----------------------------*/

main()
{
 int i;
 int j;
 int k;
 int cur_vect;  /*time*/

 DEF_GENPAT("fdjscapin");

/* interface */
 DECLAR("ck" ,":2","B",IN,"","");
 DECLAR("vdd",":2","B",IN,"","");
 DECLAR("vss",":2","B",IN,"","");
 DECLAR("word_in",":2","X",IN,"7 downto 0","");
 DECLAR("reset",":2","B",IN,"","");
 DECLAR("error_f",":2","B",OUT,"","");
 DECLAR("data",":2","X",OUT,"7 downto 0","");
 DECLAR("address",":2","X",OUT,"7 downto 0","");
 DECLAR("scanin" , ":2", "B",IN,"","");
 DECLAR("scanout", ":2", "B" , OUT, "","");
 DECLAR("test", ":2", "B", IN,"","");

 SETTUNIT("ps");

/* patterns @ time =0ns */
 LABEL("select_0");
 cur_vect = 0;

/* INIT (inttostr(cur_vect),"input","0x0");*/
 AFFECT(inttostr(cur_vect),"ck","0b0");
 AFFECT(inttostr(cur_vect),"vdd","0b1");
 AFFECT(inttostr(cur_vect),"vss","0b0");
 AFFECT(inttostr(cur_vect),"word_in","0x0");
 AFFECT(inttostr(cur_vect),"reset","0b1");
 AFFECT(inttostr(cur_vect),"test","0b1");
 AFFECT(inttostr(cur_vect),"scanin","0b0");


 /*ck signal */
 for (k=0; k < 270; k++)
   {
	if ( k%2 == 1)
	  AFFECT(inttostr(cur_vect),"ck","0b1");
	else
	  AFFECT(inttostr(cur_vect),"ck","0b0");
	
	cur_vect += 50000;
  }

/* reset signal */
 cur_vect = 0;
 for (k=0; k < 270; k++)
  {
	if(k <= 2)
	  AFFECT(inttostr(cur_vect),"reset","0b1");
	else 
	  AFFECT(inttostr(cur_vect),"reset","0b0");

	cur_vect += 50000;
  }


 cur_vect = 100000;
/*word_in signal */
for ( k=0; k<2; k++)
{
 AFFECT(inttostr(cur_vect),"word_in","0x7e");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0x7e");

	cur_vect += 100000;	/* ck period */

 AFFECT(inttostr(cur_vect),"word_in","0x80");

	cur_vect += 100000;


 AFFECT(inttostr(cur_vect),"word_in","0xe0");

	cur_vect += 100000;


 AFFECT(inttostr(cur_vect),"word_in","0x55");

	cur_vect += 100000;


 AFFECT(inttostr(cur_vect),"word_in","0xe7");

	cur_vect += 100000;

/**********************************************************/

 AFFECT(inttostr(cur_vect),"word_in","0x7e");

	cur_vect += 100000;


 AFFECT(inttostr(cur_vect),"word_in","0x80");

	cur_vect += 100000;


 AFFECT(inttostr(cur_vect),"word_in","0xe1");

	cur_vect += 100000;


 AFFECT(inttostr(cur_vect),"word_in","0x66");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0xe7");

	cur_vect += 100000;

/**********************************************************/
 AFFECT(inttostr(cur_vect),"word_in","0x7e");

	cur_vect += 100000;


 AFFECT(inttostr(cur_vect),"word_in","0x80");

	cur_vect += 100000;


 AFFECT(inttostr(cur_vect),"word_in","0xe1");

	cur_vect += 100000;


 AFFECT(inttostr(cur_vect),"word_in","0x66");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0x77");

	cur_vect += 100000;


 AFFECT(inttostr(cur_vect),"word_in","0xe7");

	cur_vect += 100000;

/**********************************************************/

 AFFECT(inttostr(cur_vect),"word_in","0x7e");

	cur_vect += 100000;


 AFFECT(inttostr(cur_vect),"word_in","0x81");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0xf2");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0x88");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0x99");

	cur_vect += 100000;

  AFFECT(inttostr(cur_vect),"word_in","0xe7");

	cur_vect += 100000;

/**********************************************************/

 AFFECT(inttostr(cur_vect),"word_in","0x77");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0x81");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0xf2");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0x88");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0x99");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0xe7");

	cur_vect += 100000;

/**********************************************************/

 AFFECT(inttostr(cur_vect),"word_in","0x7e");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0x80");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0xf2");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0x88");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0xe7");

	cur_vect += 100000;

/**********************************************************/

 AFFECT(inttostr(cur_vect),"word_in","0x7e");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0x70");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0xf2");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0x88");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0x99");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0xe7");

	cur_vect += 100000;

/**********************************************************/

 AFFECT(inttostr(cur_vect),"word_in","0x7e");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0x81");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0xf2");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0x88");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0x99");

	cur_vect += 100000;

 AFFECT(inttostr(cur_vect),"word_in","0xe7");

	cur_vect += 100000;

/**********************************************************/

}
/******************* test signals ************************/
cur_vect = 0;
for ( k=0; k < 270 ; k++)
 {
	if(k <= 1)
		AFFECT(inttostr(cur_vect),"test","0b0");
	else if(k <= 184)
		AFFECT(inttostr(cur_vect),"test","0b0");
	else
		AFFECT(inttostr(cur_vect),"test","0b1");

	cur_vect += 50000;
 }

// scanin signal
cur_vect = 184*50000; 
for( k=0 ; k<40 ; k++)
 {
	AFFECT(inttostr(cur_vect),"scanin","0b1");	cur_vect += 100000;
 }

for( k=0 ; k<44 ; k++)
 {
	AFFECT(inttostr(cur_vect),"scanin","0b0");	cur_vect += 100000;
 }


SAV_GENPAT();
 exit(0);
}
