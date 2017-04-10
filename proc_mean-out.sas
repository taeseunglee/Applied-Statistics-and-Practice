/* proc_mean-out.sas 
 * edited by taeseung lee - 2017.03.20 */
DATA score;
    INPUT dept $ gender $ age score @@;
CARDS;
Stat M 10 94  Stat F 10 96  Stat M 15 91  Stat M 15 86
Stat F 10 76  Stat M 20 88 Math M 20 71 Math F 20 66
Math M 15 81  Math F 10 77 Math F 15 55 Math F 20 78
;
RUN;

proc means data=score maxdec=2 max min mean;
	class dept;
	var age score;
	output out=scoreout mean=m_age m_score
	std=s_age s_score
run;

proc print data=scoreout;
run;
