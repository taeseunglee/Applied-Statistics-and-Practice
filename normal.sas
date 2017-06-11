/* normal.sas
 * edited by taeseung lee - 2017.05.22
*/

GOPTIONS RESET=symbol;
GOPTIONS RESET=axis;

symbol4 C=green I=join V=none;
symbol5 C=red I=join V=none;
symbol6 C=cyan I=join V=none;

Legend1 across=1 position=(TOP RIGHT INSIDE)
	VALUE=('N(0,1)' 'N(1,1)' 'N(2,1)');

DATA Normal;
	Format X 5.1;
	DO x=-3 to 5 by 0.1;
		F1 = exp(-(x**2)/2)/sqrt(6.28);
		F2 = exp(-((x-1)**2)/2)/sqrt(6.28);
		F3 = exp(-((x-2)**2)/2)/sqrt(6.28);
		OUTPUT;
	END;
RUN;

PROC gplot data=normal;
	plot F1*X=1 F2*X=2 F3*X=3 /
overlay legend=legend1;
title 'GRAPHS OF N(0,1), N(1,1) AND N(2,1) ';
RUN;
QUIT;
