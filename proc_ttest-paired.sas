/* proc_ttest-paired.sas 
 * edited by taeseung lee - 2017.04.05 */

/*
Reference:
https://support.sas.com/documentation/cdl/en/statug/63033/HTML/default/viewer.htm#ttest_toc.htm

Features Supported in the TTEST Procedure:
https://support.sas.com/documentation/cdl/en/statug/63033/HTML/default/viewer.htm#statug_ttest_a0000000113.htm
(Overview: TTEST Procedure)
*/


DATA paired;
	INPUT id pretest posttest @@;
CARDS;
01 80 82  02 73 71  03 70 95  04 60 69  05 88 100
06 84 71  07 65 75  08 37 60  09 91 95  10 98 99
11 52 65  12 78 83  13 40 60  14 79 86  15 59 62
;
RUN;


proc ttest data= paired;
paired pretest*posttest;
run;
