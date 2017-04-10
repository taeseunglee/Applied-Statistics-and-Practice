/* proc_ttest-two.sas 
 * edited by taeseung lee - 2017.04.05 */

/*
Reference:
https://support.sas.com/documentation/cdl/en/statug/63033/HTML/default/viewer.htm#ttest_toc.htm

Features Supported in the TTEST Procedure:
https://support.sas.com/documentation/cdl/en/statug/63033/HTML/default/viewer.htm#statug_ttest_a0000000113.htm
(Overview: TTEST Procedure)
*/

/* DF: degree of freedom */

DATA edu;
	INPUT group score @@;
	LABEL csi='소비자 만족도 지수';
CARDS;
1 65 1 70 1 76 1 63 1 72 1 71 1 68 1 68
2 75 2 80 2 72 2 77 2 69 2 81 2 71 2 78
;
RUN;

/* Two-independent-sample - CLASS statement & VAR statement */
/* Reference for "Comparing Two Independent Means":
https://onlinecourses.science.psu.edu/stat200/node/60
*/
proc ttest data=edu;
class group;
var score;
run;
