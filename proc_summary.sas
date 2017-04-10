/* proc_summary.sas 
 * edited by taeseung lee - 2017.03.20 */
DATA score;
    INPUT dept $ gender $ age score @@;
CARDS;
Stat M 10 94  Stat F 10 96  Stat M 15 91  Stat M 15 86
Stat F 10 76  Stat M 20 88 Math M 20 71 Math F 20 66
Math M 15 81  Math F 10 77 Math F 15 55 Math F 20 78
;
RUN;

proc summary data=score;
	class dept gender;
	var age score;
	output out=n_score mean (age score)=;
run;

proc print data=n_score;
run;
