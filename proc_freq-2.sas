/* proc_freq-2.sas 
 * edited by taeseung lee - 2017.04.24 */
DATA soft;
    INPUT age $ beverage $ count @@;
CARDS;
20�� coke 10  20�� pepsi 14  20�� fanta 4  20�� others 12
30�� coke 13  30�� pepsi 9  30�� fanta 10  30�� others 8
40�� coke 12  40�� pepsi 8  40�� fanta 10  40�� others 10
;
RUN;

proc freq data=soft order=data;
	weight count;
	exact fisher; /* Since I use chi square */
	tables age * beverage / nocol nopercent expected chisq;
run;
