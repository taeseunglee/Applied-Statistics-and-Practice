/* reg-selection.sas
 * edited by taeseung lee - 2017.06.07
 * reg selection referecence: https://support.sas.com/documentation/cdl/en/statug/63347/HTML/default/viewer.htm#statug_reg_sect030.htm
 */
DATA fitness;
	INPUT oxygen age weight runtime rstpulse runpulse maxpulse @@;
CARDS;
	44.609 44 89.47 11.37 62 178 182  45.313 40 75.07 10.07 62 185 185
	54.297 44 85.84  8.65 45 156 168  59.571 42 68.15  8.17 40 166 172
	49.874 38 89.02  9.22 55 178 180  44.811 47 77.45 11.63 58 176 176
	45.681 40 75.98 11.95 70 176 180  49.091 43 81.19 10.85 64 162 170
	39.442 44 81.42 13.08 63 174 176  60.055 38 81.87  8.63 48 170 186
	50.541 44 73.03 10.13 45 168 168  37.388 45 87.66 14.03 56 186 192
	44.754 45 66.45 11.12 51 176 176  47.273 47 79.15 10.60 47 162 164
	51.855 54 83.12 10.33 50 166 170  49.156 49 81.42  8.95 44 180 185
	40.836 51 69.63 10.95 57 168 172  46.672 51 77.91 10.00 48 162 168
	46.774 48 91.63 10.25 48 162 164  50.388 49 73.37 10.08 67 168 168
	39.407 57 73.37 12.63 58 174 176  46.080 54 79.38 11.17 62 156 165
	45.441 52 76.32  9.63 48 164 166  54.625 50 70.87  8.92 48 146 155
	45.118 51 67.25 11.08 48 172 172  39.203 54 91.63 12.88 44 168 172
	45.790 51 73.71 10.47 59 186 188  50.545 57 59.08  9.93 49 148 155
	48.673 49 76.32  9.40 56 186 188  47.920 48 61.24 11.50 52 170 176
	47.467 52 82.78 10.50 53 170 172
;
RUN;
 
 /* slentry :forward, slstay: backward, slentry slstay: stepwise */
proc reg data = fitness;
	model oxygen = age weight runtime rstpulse runpulse maxpulse
	 / selection = backward cp slstay=0.15;
	/* / selection = stepwise adjrsq;*/
	/* / selection = adjrsq
run;