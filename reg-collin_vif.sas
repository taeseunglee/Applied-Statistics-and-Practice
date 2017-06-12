/* reg-collin_vif.sas
 * edited by taeseung lee - 2017.06.12
 */
 
data multico;
	/* infile 'C:\Users\MATH\Downloads\multi.txt'; */
	input y x1 x2 x3 x4 @@;
CARDS;
	4.00  4.00  4.00  4.00  4.00  4.00  4.00  4.00  3.00  3.50
	4.00  4.00  3.00  4.50  4.00  4.00  4.00  4.00  3.00  3.50
	5.00  5.00  5.00  4.00  4.50  4.00  4.00  5.00  3.00  3.50
	4.00  4.00  4.00  3.00  3.50  5.00  5.00  4.00  4.00  4.50
	4.00  4.00  4.00  3.50  4.00  4.00  4.00  5.00  3.00  3.50
	3.00  4.00  4.00  3.00  3.50  4.00  3.00  3.00  3.00  3.00
	4.00  4.00  4.00  4.00  4.00  4.00  4.00  4.00  3.00  3.50
	4.00  4.00  4.00  3.00  3.50  4.00  4.00  3.00  2.50  3.00
	4.00  4.00  3.00  3.00  3.50  4.00  4.00  5.00  5.00  4.50
	5.00  4.00  4.00  5.00  4.50  5.00  5.00  4.00  4.00  4.50
run;
 
proc reg data=multico;
	model y = x1 x2 x3 x4;
run;

proc reg data=multico;
	model y = x1 x2 x3 x4 / vif collin;
run;

Proc reg data=multico;
/*	model y = x1 x2 x3 / selection = cp adjrsq mse; */
	model y = x1 x2 x3 / selection = stepwise;
run;
