/* proc_freq.sas 
 * edited by taeseung lee - 2017.03.22 */
DATA score;
    INPUT dept $ gender $ age score @@;
CARDS;
Stat M 10 94  Stat F 10 96  Stat M 15 91  Stat M 15 86
Stat F 10 76  Stat M 20 88 Math M 20 71 Math F 20 66
Math M 15 81  Math F 10 77 Math F 15 55 Math F 20 78
;
RUN;

/* table: row*column */
proc freq data=score order=data;
	tables dept gender dept*gender;
	tables dept*gender/ norow nopercent;
run;
