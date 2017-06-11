/* proc_reg-output.sas
 * edited by taeseung lee - 2017.05.31
 * regression diagnostic
 */
data A;
	input X Y @@;
CARDS;
1 21 2 32 3 43 4 56 5 67 6 72 7 83
;
run;
 
 
/* Dependent Mean: Mean of Y(dependent variable) */
proc plot data=A;
	plot Y*X;
 
proc reg data=A;
	model y=x/dw p r influence; /* p: predicted value, r: residual */
	plot r.*p.; /* r.: residual p.: predicted value / meaning of dot: r and p is undeclared, so we use dot*/
	plot r.*x;
	output out=TWO predicted=PREDICT r=RESIDUAL;
proc univariate data=TWO normal plot;
	var RESIDUAL;
run;
