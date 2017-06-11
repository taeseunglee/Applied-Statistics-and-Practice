/* anova-interaction.sas
 * edited by taeseung lee - 2017.05.22
*/

DATA sales;
	DO city = 'Large ', 'Middle', 'Small'; /* The lengths of values that is printed by Anova Procedure Class Level is determined by a length of first Value.  */
		DO design = 'A', 'B', 'C';
			DO res = 1, 2, 3;
				INPUT sales @@;
				OUTPUT;
			END;
		END;
	END;
CARDS;
23 20 21  22 19 20  19 18 21
22 20 19  24 25 22  20 19 22
18 18 16  21 23 20  20 22 24
;
RUN;

proc anova data=sales;
class city design;
model sales = city design city*design;
run;
quit;

proc summary data=sales nway;
class city design;
var sales;
output out = meanout mean(sales)=mean;
run;


symbol1 i=join w = 1 v=dot cv=black h=2;
symbol2 i=join w = 1 v=circle cv=red h=2;
symbol3 i=join w = 1 v=square cv=blue h=2;


proc gplot data = meanout;
	plot mean * city = design; /* y-axis * x-axis */
run;
