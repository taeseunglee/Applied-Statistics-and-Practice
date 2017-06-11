/* contrast.sas 
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
The CONTRAST statement enables you to perform custom hypothesis tests
by specifying an  vector or matrix for testing the univariate hypothesis  or
the multivariate hypothesis. Thus, to use this feature you must be familiar
with the details of the model parameterization that PROC GLM uses.
contrast url: https://support.sas.com/documentation/cdl/en/statug/63033/HTML/default/viewer.htm#statug_glm_sect012.htm
*/
proc glm;
class DENSITY;
model Y=DENSITY;
contrast '1 2 3 vs 4' density .33333 .33333 .33333 -1;
contrast '1 vs 2 3 4' density 1 -.33333 -.33333 -.33333;
contrast '1 2 vs 3 4' density 0.5 0.5 -0.5 -0.5;
contrast '3 vs 4' density 0 0 1 -1;
