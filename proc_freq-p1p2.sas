/* proc_freq-p1p2.sas 
 * edited by taeseung lee - 2017.04.12 */
DATA support;
    INPUT gender $ yesno $ count@@;
CARDS;
害切 YES 110 害切 NO 140
食切 YES 104 食切 NO 96
;
RUN;

proc freq data=support order=data;
	weight count;
	tables gender*yesno/ chisq fisher nopercent nocol;
run;
