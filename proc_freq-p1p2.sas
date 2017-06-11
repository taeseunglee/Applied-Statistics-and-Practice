/* proc_freq-p1p2.sas 
 * edited by taeseung lee - 2017.04.12 */
DATA support;
    INPUT gender $ yesno $ count@@;
CARDS;
���� YES 110 ���� NO 140
���� YES 104 ���� NO 96
;
RUN;

proc freq data=support order=data;
	weight count;
	tables gender*yesno/ chisq fisher nopercent nocol;
run;
