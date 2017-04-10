/* cibasic.sas 
 * edited by taeseung lee - 2017.03.27 */

DATA csi;
	INPUT csi @@;
	LABEL csi='소비자 만족도 지수';
CARDS;
75 63 49 86 53 80 70 72 81 80 69 76 85 95 66 77 77 63
68 90 82 59 60
;
RUN;

/* default alpha = 0.05 */
proc univariate data=csi cibasic normal plot;
var csi;
run;
