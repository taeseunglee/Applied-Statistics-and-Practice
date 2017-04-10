/* proc_univariate_with_sort.sas 
 * edited by taeseung lee - 2017.03.15 */

/* procedure univariate
����(- �����Լ�),
�ֵ� - ����(���ʲ���), ��� (������ ����),
÷�� - ǥ�� ���Ժ����� ���Ͽ� �� �������� (�ٺ����� check)
������(sum of squares) - ������ ������ ��
����������(css) - �������� ��
������ >= ����������

����: �ִ� - �ּ�
����� ����: ����, ���� 25�ۼ�Ʈ�� �����ϰ� ����� ���� (�ƿ����̳ʰ� ���� �� �����Ƿ�) 

u0(���)���� 0���� ������ �ȵǾ��ִ� ��� -> �����̵� -> ���ο� ���� ����
super1 = super - 80
(dataset�� �������� �߰��ؾ��Ѵ�.)
*/

DATA cholest;
	INPUT gender $ age super @@;
	label super='�ݷ���Ʈ�� ����ȭ��' age='����';
CARDS;
M 23 40 M 64 88 M 66 110 M 31 86	 M 55 137
M 48 78 M 58 111 M 31 88 M 27 80	 M 25 86
M 20 80 M 32 47	M 63 106 M 23 65 M 62 74
M 43 66 M 43 79 M 36 58 M 67 123 M 27 87
M 29 88 M 48 90 M 63 56 M 27 73 M 19 112
M 59 110 M 65 118 M 26 52 M 53 106 M 42 67
M 60 57 F 30 66 F 25 69 F 40 65 F 38 52
F 57 84 F 33 86 F 23 35 F 42 116 F 49 76
F 35 55 F 49 73 F 44 89 F 50 127 F 60 87
F 63 142 F 47 77 F 23 76 F 27 58 F 36 91
F 48 107 F 23 98 F 74 128 F 44 84 F 56 146
F 53 75 F 37 120 F 41 80 F 41 72 F 57 123
;
RUN;

proc sort data=cholest;
by descending gender;
run;

proc univariate data=cholest;
class gender;
var super age;
run;

/*
- An Error occured in  the below procedures! -
Confilct "by descending gender in proc sort" with "by gender in proc univariate"
proc sort data=cholest;
by descending gender;   <----------
run;

proc univariate data=cholest;
by gender;						<----------
var super age;
run;
*/

/* print data with labelling */
proc print label data=cholest;
run;
/* vs (with no labelling)
proc print data=cholest;
run;
*/