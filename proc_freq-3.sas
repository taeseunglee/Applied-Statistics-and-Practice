/* proc_freq-3.sas 
 * edited by taeseung lee - 2017.04.24 */
DATA bean;
    INPUT type count@@;
CARDS;
1 315 2 108 3 101 4 32
;
RUN;

/*
Reference of table statement in freq procedure:
https://support.sas.com/documentation/cdl/en/statug/63033/HTML/default/viewer.htm#statug_freq_sect010.htm

NOCUM: suppresses display of cumulative frequencies and percentages
*/
proc freq data=bean;
	weight count;
	tables type/nocum testp=(0.5625 0.1875 0.1875 0.0625);
run;
