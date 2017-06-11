/* proc_reg-plot.sas
 * edited by taeseung lee - 2017.05.29
 * simple linear regression
 */
DATA adsales;
	INPUT company adver sales @@;
CARDS;
01 11 23  02 19 32  03 23 36  04 26 46  05 56 93
06 62 99  07 29 49  08 30 50  09 38 65  10 39 70
11 46 71  12 49 89
;
RUN;

/* Dependent Mean: Mean of Y(dependent variable) */
proc plot data=adsales;
plot sales*adver;


proc reg DATA=adsales;
	Model sales = adver;
	Plot sales * adver;
RUN;
QUIT;