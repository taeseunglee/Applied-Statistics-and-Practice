/* merge.sas 
 * edited by taeseung lee - 2017.04.10 */

DATA a;
	input a1-a3;
CARDS;
	1 2 3
	4 5 6
;
DATA b;
	input a1 a2 a4;
CARDS;
	1 2 3
	7 8 9
;

DATA c;
	input a4;
CARDS;
	10
	11
;

/*
Reference of Merge statement:
http://support.sas.com/documentation/cdl/en/lrdict/64316/HTML/default/viewer.htm#a000202970.htm
To perform a "match-merge", use a BY statement immediately after the MERGE statement.
*/

DATA a1; merge a b; proc print; run;
DATA a2; merge a  b; by a1; proc print; run;
DATA a3; merge a  c; proc print; run;
