/* anova1.sas 
 * edited by taeseung lee - 2017.05.10
 * Multiple comparisons problem
*/
data onefac;
	do density = 1 to 4;
	/* do density = 'A1', 'A2', 'A3', 'A4'; */
		input y @@;
		output;
	end;
cards;
6250 6150 6080 6200
6300 6290 6120 6220
6420 6170 6020 6010
6220 6180 6040 6030
6320 6080 6020 6000
;
run;



/*
The CLASS statement is required, and it must appear before the MODEL statement.
bon: bonferroni
proc anova: https://support.sas.com/documentation/cdl/en/statug/63033/HTML/default/viewer.htm#anova_toc.htm
*/
proc anova data=onefac;
	class density;
	model y = density;
	means density/lsd duncan bon scheffe tukey alpha=0.05; /* lsd : least significant difference */
	run;
quit; /* necessary */
