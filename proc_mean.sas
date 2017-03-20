/* proc_mean.sas
 * edited by taeseung lee - 2017.03.08 */
/* Reference : http://support.sas.com/documentation/cdl/en/lrdict/64316/HTML/default/viewer.htm#a000146292.htm
 *
 * $ : specifies to store the variable value as a character value rather than as a numeric value.
 * @ : holds an input record for the execution of the next INPUT statement within the same iteration of the DATA step.
 *      This line-hold specifier is called trailing @.
 *  @@ : holds the input record for the execution of the next INPUT statement across iterations of the DATA step.
 *          This line-hold specifier is called double trailing @.
 */
DATA score;
    INPUT dept $ gender $ age score @@;
CARDS;
Stat M 10 94  Stat F 10 96  Stat M 15 91  Stat M 15 86
Stat F 10 76  Stat M 20 88 Math M 20 71 Math F 20 66
Math M 15 81  Math F 10 77 Math F 15 55 Math F 20 78
;
RUN;
/* Example 1 - proc print*/
proc print data=score;
run;

/* Statements of Means Procedure, Reference of MEANS Procedure : https://support.sas.com/documentation/cdl/en/proc/61895/HTML/default/viewer.htm#a000146728.htm */
/* Example 2 - proc means */
proc means data=score;
run;

/* Example 3 - proc means, VAR statement print specific rows */
proc means data=score;
	var age;
run;

/* Example 4 - proc means, CLASS statement */
proc means data=score;
class dept;
var age;
run;
