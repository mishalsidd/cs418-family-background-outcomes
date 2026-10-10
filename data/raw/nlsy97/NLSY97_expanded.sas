options nocenter validvarname=any;

*---Read in space-delimited ascii file;

data new_data;

infile 'NLSY97_expanded.dat' lrecl=50 missover DSD DLM=' ' print;
input
  R0000100
  R0536300
  R0536401
  R0536402
  R1204500
  R1235800
  R1302400
  R1302500
  R1482600
  U5753300
  U5753500
  Z9061911
;
array nvarlist _numeric_;

*---Recode missing values to SAS custom system missing. See SAS
      documentation for use of MISSING option in procedures, e.g. PROC FREQ;

do over nvarlist;
  if nvarlist = -1 then nvarlist = .R;  /* Refused */
  if nvarlist = -2 then nvarlist = .D;  /* Dont know */
  if nvarlist = -3 then nvarlist = .I;  /* Invalid missing */
  if nvarlist = -4 then nvarlist = .V;  /* Valid missing */
  if nvarlist = -5 then nvarlist = .N;  /* Non-interview */
end;

  label R0000100 = "PUBID - YTH ID CODE 1997";
  label R0536300 = "KEY!SEX (SYMBOL) 1997";
  label R0536401 = "KEY!BDATE M/Y (SYMBOL) 1997";
  label R0536402 = "KEY!BDATE M/Y (SYMBOL) 1997";
  label R1204500 = "CV_INCOME_GROSS_YR 1997";
  label R1235800 = "CV_SAMPLE_TYPE 1997";
  label R1302400 = "CV_HGC_BIO_DAD 1997";
  label R1302500 = "CV_HGC_BIO_MOM 1997";
  label R1482600 = "KEY!RACE_ETHNICITY (SYMBOL) 1997";
  label U5753300 = "R RCV INC FROM JOB PAST YR? 2021";
  label U5753500 = "TTL INC WAGES, SALARY PAST YR 2021";
  label Z9061911 = "CVC_WKSWK_YR_ALL L20";

/*---------------------------------------------------------------------*
 *  Crosswalk for Reference number & Question name                     *
 *---------------------------------------------------------------------*
 * Uncomment and edit this RENAME statement to rename variables
 * for ease of use.  You may need to use  name literal strings
 * e.g.  'variable-name'n   to create valid SAS variable names, or 
 * alter variables similarly named across years.
 * This command does not guarantee uniqueness

 * See SAS documentation for use of name literals and use of the
 * VALIDVARNAME=ANY option.     
 *---------------------------------------------------------------------*/
  /* *start* */

* RENAME
  R0000100 = 'PUBID_1997'n
  R0536300 = 'KEY!SEX_1997'n
  R0536401 = 'KEY!BDATE_M_1997'n
  R0536402 = 'KEY!BDATE_Y_1997'n
  R1204500 = 'CV_INCOME_GROSS_YR_1997'n
  R1235800 = 'CV_SAMPLE_TYPE_1997'n
  R1302400 = 'CV_HGC_BIO_DAD_1997'n
  R1302500 = 'CV_HGC_BIO_MOM_1997'n
  R1482600 = 'KEY!RACE_ETHNICITY_1997'n
  U5753300 = 'YINC-1400_2021'n
  U5753500 = 'YINC-1700_2021'n
  Z9061911 = 'CVC_WKSWK_YR_ALL.20_XRND'n
;
  /* *finish* */
run;

proc means data=new_data n mean min max;
run;

/*---------------------------------------------------------------------*
 *  FORMATTED TABULATIONS                                              *
 *---------------------------------------------------------------------*
 * You can uncomment and edit the PROC FORMAT and PROC FREQ statements 
 * provided below to obtain formatted tabulations. The tabulations 
 * should reflect codebook values.
 * 
 * Please edit the formats below reflect any renaming of the variables
 * you may have done in the first data step. 
 *---------------------------------------------------------------------*/

/*
proc format;
value vx0f
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
;
value vx1f
  1='Male'
  2='Female'
  0='No Information'
;
value vx2f
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
;
value vx4f
  -999999--3000='-999999 TO -3000: < -2999'
  -2999--2000='-2999 TO -2000'
  -1999--1000='-1999 TO -1000'
  -999--1='-999 TO -1'
  0='0'
  1-1000='1 TO 1000'
  1001-2000='1001 TO 2000'
  2001-3000='2001 TO 3000'
  3001-5000='3001 TO 5000'
  5001-10000='5001 TO 10000'
  10001-20000='10001 TO 20000'
  20001-30000='20001 TO 30000'
  30001-40000='30001 TO 40000'
  40001-50000='40001 TO 50000'
  50001-65000='50001 TO 65000'
  65001-80000='65001 TO 80000'
  80001-100000='80001 TO 100000'
  100001-150000='100001 TO 150000'
  150001-200000='150001 TO 200000'
  200001-999999='200001 TO 999999: 200001+'
;
value vx5f
  1='Cross-sectional'
  0='Oversample'
;
value vx6f
  0='NONE'
  1='1ST GRADE'
  2='2ND GRADE'
  3='3RD GRADE'
  4='4TH GRADE'
  5='5TH GRADE'
  6='6TH GRADE'
  7='7TH GRADE'
  8='8TH GRADE'
  9='9TH GRADE'
  10='10TH GRADE'
  11='11TH GRADE'
  12='12TH GRADE'
  13='1ST YEAR COLLEGE'
  14='2ND YEAR COLLEGE'
  15='3RD YEAR COLLEGE'
  16='4TH YEAR COLLEGE'
  17='5TH YEAR COLLEGE'
  18='6TH YEAR COLLEGE'
  19='7TH YEAR COLLEGE'
  20='8TH YEAR COLLEGE OR MORE'
  95='UNGRADED'
;
value vx7f
  0='NONE'
  1='1ST GRADE'
  2='2ND GRADE'
  3='3RD GRADE'
  4='4TH GRADE'
  5='5TH GRADE'
  6='6TH GRADE'
  7='7TH GRADE'
  8='8TH GRADE'
  9='9TH GRADE'
  10='10TH GRADE'
  11='11TH GRADE'
  12='12TH GRADE'
  13='1ST YEAR COLLEGE'
  14='2ND YEAR COLLEGE'
  15='3RD YEAR COLLEGE'
  16='4TH YEAR COLLEGE'
  17='5TH YEAR COLLEGE'
  18='6TH YEAR COLLEGE'
  19='7TH YEAR COLLEGE'
  20='8TH YEAR COLLEGE OR MORE'
  95='UNGRADED'
;
value vx8f
  1='Black'
  2='Hispanic'
  3='Mixed Race (Non-Hispanic)'
  4='Non-Black / Non-Hispanic'
;
value vx9f
  1='YES'
  0='NO'
;
value vx10f
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-49999='25000 TO 49999'
  50000-99999999='50000 TO 99999999: 50000+'
;
value vx11f
  0='0: weeks'
  1-5='1 TO 5: weeks'
  6-10='6 TO 10: weeks'
  11-15='11 TO 15: weeks'
  16-20='16 TO 20: weeks'
  21-25='21 TO 25: weeks'
  26-30='26 TO 30: weeks'
  31-35='31 TO 35: weeks'
  36-40='36 TO 40: weeks'
  41-45='41 TO 45: weeks'
  46-50='46 TO 50: weeks'
  51-999='51 TO 999: weeks'
;
*/

/* 
 *--- Tabulations using reference number variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format R0000100 vx0f.;
  format R0536300 vx1f.;
  format R0536401 vx2f.;
  format R1204500 vx4f.;
  format R1235800 vx5f.;
  format R1302400 vx6f.;
  format R1302500 vx7f.;
  format R1482600 vx8f.;
  format U5753300 vx9f.;
  format U5753500 vx10f.;
  format Z9061911 vx11f.;
run;
*/

/*
*--- Tabulations using default named variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format 'PUBID_1997'n vx0f.;
  format 'KEY!SEX_1997'n vx1f.;
  format 'KEY!BDATE_M_1997'n vx2f.;
  format 'CV_INCOME_GROSS_YR_1997'n vx4f.;
  format 'CV_SAMPLE_TYPE_1997'n vx5f.;
  format 'CV_HGC_BIO_DAD_1997'n vx6f.;
  format 'CV_HGC_BIO_MOM_1997'n vx7f.;
  format 'KEY!RACE_ETHNICITY_1997'n vx8f.;
  format 'YINC-1400_2021'n vx9f.;
  format 'YINC-1700_2021'n vx10f.;
  format 'CVC_WKSWK_YR_ALL.20_XRND'n vx11f.;
run;
*/