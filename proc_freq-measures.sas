/* proc_freq-measures.sas 
 * edited by taeseung lee - 2017.04.24 */
DATA edueco;
    INPUT edu eco count @@;
CARDS;
1 1 255  1 2 105  1 3 81
2 1 110  2 2 92  2 3 66
3 1 90  3 2 113 3 3 88
;
RUN;

proc freq data=edueco order=data;
	weight count;
	exact fisher; /* Since I use chi square */
	tables edu * eco / nocol nopercent expected chisq measures;
run;
