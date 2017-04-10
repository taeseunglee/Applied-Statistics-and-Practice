/* proc_means-clm.sas 
 * edited by taeseung lee - 2017.03.27 */

DATA csi;
	INPUT csi @@;
	LABEL csi='�Һ��� ������ ����';
CARDS;
75 63 49 86 53 80 70 72 81 80 69 76 85 95 66 77 77 63
68 90 82 59 60
;
RUN;

/* default alpha = 0.05 */
/* clm - confidence limit */
proc means data=csi n mean std clm alpha=0.05;
var csi;
run;
