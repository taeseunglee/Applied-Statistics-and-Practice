/* proc_freq-2.sas 
 * edited by taeseung lee - 2017.04.24 */
DATA soft;
    INPUT age $ beverage $ count @@;
CARDS;
20대 coke 10  20대 pepsi 14  20대 fanta 4  20대 others 12
30대 coke 13  30대 pepsi 9  30대 fanta 10  30대 others 8
40대 coke 12  40대 pepsi 8  40대 fanta 10  40대 others 10
;
RUN;

proc freq data=soft order=data;
	weight count;
	exact fisher; /* Since I use chi square */
	tables age * beverage / nocol nopercent expected chisq;
run;
