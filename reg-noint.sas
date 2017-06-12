/* reg-noint.sas
 * edited by taeseung lee - 2017.06.12
 */
data AA;
	input class ID Name $ gender $ Major $ Age Rigion $;
CARDS;
	1  1 김승현 M 통계 20 서울 
	1  2 최경희 F 전산 20 광역시 
	1  3 강희영 F 전산 20 서울
	1  4 이남석 M 전산 20 지방
	1  5 이주형 M 전산 21 서울 
	1  6 한상철 M 통계 20 지방
	1  7 김호준 M 통계 20 광역시
	1  8 김선영 F 통계 22 서울
	1  9 정동준 M 통계 20 지방
	1 10 이수미 F 전산 20 광역시
	1 11 이정아 F 전산 21 지방
	1 12 한경기 M 통계 21 지방
	1 13 김숙희 F 통계 22 서울
	1 14 한미라 F 전산 20 광역시
	1 15 임철민 M 통계 25 광역시
;
run;


data BB;
	input class ID Name $ Math English IQ1 IQ2;
CARDS;
	1   1    김승현    80        77        125        135
	1   2    최경희    70        68        118        121
	1   3    강희영    79        80        125        128
	1   4    이남석    87        72        127        125
	1   5    이주형    70        69        118        115
	1   6    한상철    80        81        106        116
	1   7    김호준    75        63         98        105
	1   8    이선영    83        70        114        116 
	1   9    정동준    89        73        132        130
	1   10   이수미    60        79        105        110
	1   11   이정아    79        78        126        128
	1   12   한경기    90        85        139        138
	1   13   김숙희    74        92        137        135 
	1   14   한미라    79        84        107        115 
	1   15   임철민    95        92        139        142
;
run;
 
data CC;
	merge AA BB;
run;
 
proc reg data = CC;
	model IQ1 = Math English Age / noint selection = stepwise;
run;
