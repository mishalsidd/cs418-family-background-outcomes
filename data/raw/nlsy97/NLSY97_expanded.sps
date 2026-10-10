
file handle pcdat/name='NLSY97_expanded.dat' /lrecl=50.
data list file pcdat free /
  R0000100 (F4)
  R0536300 (F2)
  R0536401 (F2)
  R0536402 (F4)
  R1204500 (F6)
  R1235800 (F2)
  R1302400 (F2)
  R1302500 (F2)
  R1482600 (F2)
  U5753300 (F2)
  U5753500 (F6)
  Z9061911 (F2)
.

* The following code works with current versions of SPSS.

missing values all (-5 thru -1).
* older versions of SPSS may require this:
* recode all (-5,-3,-2,-1=-4).
* missing values all (-4).



variable labels
  R0000100  "PUBID - YTH ID CODE 1997"
  R0536300  "KEY!SEX (SYMBOL) 1997"
  R0536401  "KEY!BDATE M/Y (SYMBOL) 1997"
  R0536402  "KEY!BDATE M/Y (SYMBOL) 1997"
  R1204500  "CV_INCOME_GROSS_YR 1997"
  R1235800  "CV_SAMPLE_TYPE 1997"
  R1302400  "CV_HGC_BIO_DAD 1997"
  R1302500  "CV_HGC_BIO_MOM 1997"
  R1482600  "KEY!RACE_ETHNICITY (SYMBOL) 1997"
  U5753300  "R RCV INC FROM JOB PAST YR? 2021"
  U5753500  "TTL INC WAGES, SALARY PAST YR 2021"
  Z9061911  "CVC_WKSWK_YR_ALL L20"
.

* Recode continuous values.
* recode
  R0000100
    (0 thru 0 eq 0)
    /
    (1 thru 999 eq 1)
    /
    (1000 thru 1999 eq 1000)
    /
    (2000 thru 2999 eq 2000)
    /
    (3000 thru 3999 eq 3000)
    /
    (4000 thru 4999 eq 4000)
    /
    (5000 thru 5999 eq 5000)
    /
    (6000 thru 6999 eq 6000)
    /
    (7000 thru 7999 eq 7000)
    /
    (8000 thru 8999 eq 8000)
    /
    (9000 thru 9999 eq 9000)
    /
  R1204500
    (-999999 thru -3000 eq -999999)
    /
    (-2999 thru -2000 eq -2999)
    /
    (-1999 thru -1000 eq -1999)
    /
    (-999 thru -1 eq -999)
    /
    (0 thru 0 eq 0)
    /
    (1 thru 1000 eq 1)
    /
    (1001 thru 2000 eq 1001)
    /
    (2001 thru 3000 eq 2001)
    /
    (3001 thru 5000 eq 3001)
    /
    (5001 thru 10000 eq 5001)
    /
    (10001 thru 20000 eq 10001)
    /
    (20001 thru 30000 eq 20001)
    /
    (30001 thru 40000 eq 30001)
    /
    (40001 thru 50000 eq 40001)
    /
    (50001 thru 65000 eq 50001)
    /
    (65001 thru 80000 eq 65001)
    /
    (80001 thru 100000 eq 80001)
    /
    (100001 thru 150000 eq 100001)
    /
    (150001 thru 200000 eq 150001)
    /
    (200001 thru 999999 eq 200001)
    /
  U5753500
    (0 thru 0 eq 0)
    /
    (1 thru 999 eq 1)
    /
    (1000 thru 1999 eq 1000)
    /
    (2000 thru 2999 eq 2000)
    /
    (3000 thru 3999 eq 3000)
    /
    (4000 thru 4999 eq 4000)
    /
    (5000 thru 5999 eq 5000)
    /
    (6000 thru 6999 eq 6000)
    /
    (7000 thru 7999 eq 7000)
    /
    (8000 thru 8999 eq 8000)
    /
    (9000 thru 9999 eq 9000)
    /
    (10000 thru 14999 eq 10000)
    /
    (15000 thru 19999 eq 15000)
    /
    (20000 thru 24999 eq 20000)
    /
    (25000 thru 49999 eq 25000)
    /
    (50000 thru 99999999 eq 50000)
    /
  Z9061911
    (0 thru 0 eq 0)
    (1 thru 5 eq 1)
    (6 thru 10 eq 6)
    (11 thru 15 eq 11)
    (16 thru 20 eq 16)
    (21 thru 25 eq 21)
    (26 thru 30 eq 26)
    (31 thru 35 eq 31)
    (36 thru 40 eq 36)
    (41 thru 45 eq 41)
    (46 thru 50 eq 46)
    (51 thru 999 eq 51)
.

* value labels
 R0000100
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    /
 R0536300
    1 "Male"
    2 "Female"
    0 "No Information"
    /
 R0536401
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 R1204500
    -999999 "-999999 TO -3000: < -2999"
    -2999 "-2999 TO -2000"
    -1999 "-1999 TO -1000"
    -999 "-999 TO -1"
    0 "0"
    1 "1 TO 1000"
    1001 "1001 TO 2000"
    2001 "2001 TO 3000"
    3001 "3001 TO 5000"
    5001 "5001 TO 10000"
    10001 "10001 TO 20000"
    20001 "20001 TO 30000"
    30001 "30001 TO 40000"
    40001 "40001 TO 50000"
    50001 "50001 TO 65000"
    65001 "65001 TO 80000"
    80001 "80001 TO 100000"
    100001 "100001 TO 150000"
    150001 "150001 TO 200000"
    200001 "200001 TO 999999: 200001+"
    /
 R1235800
    1 "Cross-sectional"
    0 "Oversample"
    /
 R1302400
    0 "NONE"
    1 "1ST GRADE"
    2 "2ND GRADE"
    3 "3RD GRADE"
    4 "4TH GRADE"
    5 "5TH GRADE"
    6 "6TH GRADE"
    7 "7TH GRADE"
    8 "8TH GRADE"
    9 "9TH GRADE"
    10 "10TH GRADE"
    11 "11TH GRADE"
    12 "12TH GRADE"
    13 "1ST YEAR COLLEGE"
    14 "2ND YEAR COLLEGE"
    15 "3RD YEAR COLLEGE"
    16 "4TH YEAR COLLEGE"
    17 "5TH YEAR COLLEGE"
    18 "6TH YEAR COLLEGE"
    19 "7TH YEAR COLLEGE"
    20 "8TH YEAR COLLEGE OR MORE"
    95 "UNGRADED"
    /
 R1302500
    0 "NONE"
    1 "1ST GRADE"
    2 "2ND GRADE"
    3 "3RD GRADE"
    4 "4TH GRADE"
    5 "5TH GRADE"
    6 "6TH GRADE"
    7 "7TH GRADE"
    8 "8TH GRADE"
    9 "9TH GRADE"
    10 "10TH GRADE"
    11 "11TH GRADE"
    12 "12TH GRADE"
    13 "1ST YEAR COLLEGE"
    14 "2ND YEAR COLLEGE"
    15 "3RD YEAR COLLEGE"
    16 "4TH YEAR COLLEGE"
    17 "5TH YEAR COLLEGE"
    18 "6TH YEAR COLLEGE"
    19 "7TH YEAR COLLEGE"
    20 "8TH YEAR COLLEGE OR MORE"
    95 "UNGRADED"
    /
 R1482600
    1 "Black"
    2 "Hispanic"
    3 "Mixed Race (Non-Hispanic)"
    4 "Non-Black / Non-Hispanic"
    /
 U5753300
    1 "YES"
    0 "NO"
    /
 U5753500
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    10000 "10000 TO 14999"
    15000 "15000 TO 19999"
    20000 "20000 TO 24999"
    25000 "25000 TO 49999"
    50000 "50000 TO 99999999: 50000+"
    /
 Z9061911
    0 "0: weeks"
    1 "1 TO 5: weeks"
    6 "6 TO 10: weeks"
    11 "11 TO 15: weeks"
    16 "16 TO 20: weeks"
    21 "21 TO 25: weeks"
    26 "26 TO 30: weeks"
    31 "31 TO 35: weeks"
    36 "36 TO 40: weeks"
    41 "41 TO 45: weeks"
    46 "46 TO 50: weeks"
    51 "51 TO 999: weeks"
    /
.


/* Crosswalk for Reference number & Question name
 * Uncomment and edit this RENAME VARIABLES statement to rename variables for ease of use.
 * This command does not guarantee uniqueness
 */  /* *start* */

* RENAME VARIABLES
  (R0000100 = PUBID_1997)
  (R0536300 = KEY_SEX_1997)  /* KEY!SEX */
  (R0536401 = KEY_BDATE_M_1997)  /* KEY!BDATE_M */
  (R0536402 = KEY_BDATE_Y_1997)  /* KEY!BDATE_Y */
  (R1204500 = CV_INCOME_GROSS_YR_1997)
  (R1235800 = CV_SAMPLE_TYPE_1997)
  (R1302400 = CV_HGC_BIO_DAD_1997)
  (R1302500 = CV_HGC_BIO_MOM_1997)
  (R1482600 = KEY_RACE_ETHNICITY_1997)  /* KEY!RACE_ETHNICITY */
  (U5753300 = YINC_1400_2021)  /* YINC-1400 */
  (U5753500 = YINC_1700_2021)  /* YINC-1700 */
  (Z9061911 = CVC_WKSWK_YR_ALL_20_XRND)  /* CVC_WKSWK_YR_ALL.20 */
.
  /* *end* */

descriptives all.

*--- Tabulations using reference number variables.
*freq var=R0000100,
  R0536300,
  R0536401,
  R0536402,
  R1204500,
  R1235800,
  R1302400,
  R1302500,
  R1482600,
  U5753300,
  U5753500,
  Z9061911.

*--- Tabulations using qname variables.
*freq var=PUBID_1997,
  KEY_SEX_1997,
  KEY_BDATE_M_1997,
  KEY_BDATE_Y_1997,
  CV_INCOME_GROSS_YR_1997,
  CV_SAMPLE_TYPE_1997,
  CV_HGC_BIO_DAD_1997,
  CV_HGC_BIO_MOM_1997,
  KEY_RACE_ETHNICITY_1997,
  YINC_1400_2021,
  YINC_1700_2021,
  CVC_WKSWK_YR_ALL_20_XRND.
