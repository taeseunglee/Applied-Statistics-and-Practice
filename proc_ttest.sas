/* proc_ttest.sas 
 * edited by taeseung lee - 2017.04.05 */

/*
Reference:
https://support.sas.com/documentation/cdl/en/statug/63033/HTML/default/viewer.htm#ttest_toc.htm

Features Supported in the TTEST Procedure:
https://support.sas.com/documentation/cdl/en/statug/63033/HTML/default/viewer.htm#statug_ttest_a0000000113.htm
(Overview: TTEST Procedure)
*/

/* DF: degree of freedom */

DATA csi;
	INPUT csi @@;
	LABEL csi='소비자 만족도 지수';
CARDS;
75 63 49 86 53 80 70 72 81 80 69 76 85 95 66 77 77 63 58 74
68 90 82 59 60
;
RUN;

/* One-sample: VAR statement */
proc ttest data=csi H0=70;
var csi;
run;
