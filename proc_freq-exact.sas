/* proc_freq-exact.sas 
 * edited by taeseung lee - 2017.03.27 */

DATA poll;
	INPUT yesno $ count;
CARDS;
YES 250
NO	150
;
RUN;

/* ASE: asymptotic standard error */
proc freq data=poll order=data;
	weight count;
	exact binomial;
	tables yesno/ alpha=0.05;
run;
