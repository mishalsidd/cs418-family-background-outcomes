# Dataset Documentation

## 1. Panel Study of Income Dynamics (PSID)

### Overview

The Panel Study of Income Dynamics (PSID) is a study conducted by the University of Michigan that follows American families over time. It collects information about things like family income, education, employment, and how people's circumstances change as they get older.

For our project, we downloaded two PSID files:

| File | Description | Rows | Columns |
| --- | --- | ---: | ---: |
| `M365605.csv` | Child Development Supplement (CDS) cumulative file | 21,511 | 116 |
| `J365605.csv` | Transition into Adulthood Supplement (TAS) extract | 2,362 | 25 |

The CDS file mainly contains information used to identify and link participants across different survey years. The TAS file includes family background information and employment outcomes from adulthood. We are using these files to look at how someone's family background might relate to their income and employment later in life.

### Motivation

PSID was originally created to understand how the economic situations of American families change over time. Since the study follows families and their children over many years, it can also be used to look at how someone's childhood experiences relate to their life as an adult.

The study started in 1968 and is run by the University of Michigan's Survey Research Center. The Child Development Supplement was added to collect more information about children growing up in PSID families, while the Transition into Adulthood Supplement focuses on what happens as those children become young adults.

PSID has received funding from federal agencies, including the National Institutes of Health (NIH) and National Science Foundation (NSF). We have not confirmed the specific funding sources for the individual survey waves in our extracts.

### Composition

Each row in our PSID files represents an individual. However, the two files contain different types of information.

The CDS cumulative file has 21,511 rows and 116 columns. It mainly contains participant identifiers, information about caregivers and households, and indicators showing which survey waves or files participants appear in.

The TAS file has 2,362 rows and 25 columns. It contains variables such as family income, education of the household head and spouse, employment status, weeks worked, and wages.

PSID is based on a sample of American families, so it does not include everyone in the United States. The CDS and TAS supplements also have their own eligibility requirements, meaning not every PSID participant is included in both files.

Some information is missing because participants did not answer certain questions, stopped participating, or were not eligible for a particular survey wave. Also, the CDS file mainly contains identifiers and participation information rather than detailed childhood measurements.

One limitation for our project is that the family education variables describe the household head and spouse. These people are not necessarily the respondent's biological parents, so we need to be careful about how we interpret parental education.

The data also includes sensitive information such as family income, relationships, education, and employment. We need to follow PSID's rules for accessing and sharing these records.

### Collection Process

PSID collects information through surveys of participating families. The study began in 1968, and the main survey has generally taken place every two years since 1999.

The original PSID sample was selected using probability-based sampling. The study then continued following families and eligible descendants over time.

For our project, the CDS cumulative file contains information from survey waves between 1997 and 2024. This does not mean every participant was surveyed in every one of those years.

Our TAS extract combines family background information from 1997 with employment information from 2021. The family income variable collected in 1997 refers to income earned during 1996.

Participants in CDS and TAS are selected based on the eligibility rules for those supplements. Because of this, our data does not represent every child or young adult in the country.

The exact consent procedures and ethical review approvals for the survey waves in our extracts were not documented in the codebooks we reviewed. We would need to check additional PSID documentation to confirm those details.

We downloaded the PSID extracts through the publisher's data system and saved them in the `data/raw/psid/` folder. The exact steps used to select the variables and download the files still need to be included in our reproduction instructions.



### Preprocessing

Variable organization: PSID uses alphanumeric variable identifiers to organize its extensive collection of survey variables across historical waves.

Raw data availability: Data are available through the PSID data access system, subject to applicable access requirements and restrictions.

Publisher preprocessing: Consult PSID documentation for details on data editing, consistency checks, and other processing performed before release.

### Uses

Existing research: PSID has been used in thousands of peer-reviewed publications. Verify the reported publication count using an official PSID source.

Intended uses: Studying long-term economic, social, and health changes among American families and their descendants across generations.

Limitations: The suitability of PSID for estimating point-in-time demographic statistics depends on the research question, survey wave, sample, and appropriate weighting. Do not assume that all cross-sectional estimates are invalid.

### Distribution

Publisher and access: PSID is administered by the University of Michigan's Institute for Social Research. Data access is provided through the official PSID website.

Access conditions: Check the applicable PSID conditions of use and any restrictions associated with the requested data.

License and reuse: Verify the specific terms that apply to PSID before identifying a license. Do not assume that the Open Database License (ODbL) applies to PSID.

Redistribution: Confirm whether raw data, extracts, and derived datasets may be shared under the applicable terms.

### Maintenance

Maintaining organization: University of Michigan's Institute for Social Research (ISR).

Data collection schedule: PSID collected data annually from 1968 to 1997. Beginning in 1999, data collection transitioned to a biennial schedule (every two years).

Tracking updates: PSID announces file releases and data updates through its News section.

Version information: Record the release or version of the specific files used in your project.

### Sources

- [PSID Overview](https://psidonline.isr.umich.edu/GettingStarted.aspx)
- [CDS-TAS Study Design](https://psidonline.isr.umich.edu/CDS/Guide/StudyDesign.aspx)
- [CDS-TAS FAQ](https://psidonline.isr.umich.edu/CDS/Guide/FAQ.aspx)
- [PSID Conditions of Use](https://simbatest.isr.umich.edu/U/CondUse.aspx)
- Downloaded PSID TAS codebook and CDS cumulative variable labels

---

## 2. National Longitudinal Survey of Youth 1997 (NLSY97)

### Overview

The National Longitudinal Survey of Youth 1997 (NLSY97) is a study sponsored by the U.S. Bureau of Labor Statistics (BLS). It follows a group of people born between 1980 and 1984 and collects information about their education, jobs, income, and family experiences as they get older.

For our project, we are using `NLSY97_expanded.csv`, which contains 8,984 rows and 12 columns. Each row represents one person, and the columns include information from different survey years.

We chose this dataset because it has information about family income and parental education from when participants were younger, along with their employment and earnings as adults.

### Motivation

NLSY97 was created to better understand how young people move from school into the workforce and how their experiences change as they grow older.

Since the study follows the same people over time, researchers can look at how factors like family background, education, and early work experiences relate to employment and income later in life.

The survey is sponsored by the Bureau of Labor Statistics, which is part of the U.S. Department of Labor. The research and data collection also involve The Ohio State University and NORC at the University of Chicago.

The study is mainly funded through the BLS, although other federal agencies have supported certain parts of the survey.

### Composition

Our expanded NLSY97 file contains 8,984 rows and 12 columns. Each row represents one survey participant.

The original study included 8,984 people born between 1980 and 1984. Of these, 6,748 were part of the cross-sectional sample, while 2,236 were part of an additional sample that oversampled Black and Hispanic youth.

The variables we selected include sex, birth year, race and ethnicity, household income, biological parents' education, employment income, wages, and weeks worked.

The dataset is a sample rather than a complete record of everyone in the United States. It also focuses on one particular age group, so our results might not apply to people born in different years.

Some values are missing because participants refused to answer, did not know an answer, skipped a question, or did not participate in a later interview.

The NLSY97 codebook uses these missing-value codes:

| Code | Meaning |
| --- | --- |
| `-1` | Refused to answer |
| `-2` | Don't know |
| `-3` | Invalid skip |
| `-4` | Valid skip |
| `-5` | Non-interview |

For example, the 2021 wage question has 2,271 non-interview cases. This means we cannot assume that everyone in the original sample has complete adult earnings information.

The dataset also includes sensitive information such as household income, race and ethnicity, parental education, and wages. Some income values are topcoded to help protect respondents' privacy.

A major limitation is that we are only using 12 selected variables from a much larger survey. There are many other factors that could affect someone's adult earnings that are not included in our extract.

### Collection Process

NLSY97 started collecting data in 1997. Participants were interviewed every year through 2011, and the survey has generally been conducted every two years since 2013.

The data was collected through interviews and survey questions about participants' families, education, jobs, income, and other life experiences.

The original participants were selected using probability-based sampling. The study included a cross-sectional sample and an oversample of Black and Hispanic youth.

For our project, we mainly use family background information collected in 1997 and adult employment information from 2020. The employment questions were asked during the 2021 survey but refer to income and work during the previous year.

The downloaded codebook does not explain the exact consent procedures or ethical review approvals for each survey wave. We would need to check additional publisher documentation for those details.

We downloaded the expanded extract and saved it in `data/raw/nlsy97/`. The file `NLSY97_expanded.cdb` contains descriptions of the variables and their values.

### Preprocessing

Missing-value codes: NLSY97 uses special codes to distinguish response and interview statuses. Examples in the project notes include:

-1: Refused

-2: Don't Know

-3: Invalid Skip

-4: Valid Skip

-5: Non-interview

Data editing: The project notes describe editing timeline information to improve consistency. Verify the exact procedure in the official documentation.

Variable organization: Check the NLSY97 documentation for how variables and historical information are organized across survey rounds.

Raw data availability: Consult the official NLSY97 website for public-use data access and applicable restrictions.

### Uses

Employment and earnings: Studying employment histories, wages, employee benefits, and unemployment.

Education: Analyzing high school completion, college attendance, and educational attainment.

Family and well-being: Examining family dynamics, health, crime, and substance-use outcomes where supported by the available variables.

Limitations: The cohort represents people born during a specific period. Findings should not automatically be generalized to other birth cohorts, and the dataset should not be used to identify or track individual participants' locations.

### Distribution

Publisher and sponsor: The U.S. Bureau of Labor Statistics (BLS) sponsors the NLSY97. Data are made available through the official NLSY97 website.

Access conditions: Consult the official site for public-use data access, registration requirements, and any restrictions.

License and reuse: Verify the applicable public-use terms before describing the data as public domain or making claims about commercial reuse.

Formats and releases: Document the file formats and release/version information for the specific data files used in the project.

### Maintenance

Sponsoring organization: The U.S. Bureau of Labor Statistics (BLS) sponsors the NLSY97.

Interview schedule: Interviews were conducted annually from 1997 to 2011 and transitioned to a biennial schedule beginning in 2013.

Tracking updates: Consult the official NLSY97 website for data releases and documentation updates.

Version information: Record the release or version of the specific NLSY97 files used in your project. Distinguish the interview schedule from the data release schedule.

### Sources

- [BLS NLSY97 Overview](https://www.bls.gov/nls/nlsy97.htm)
- [NLSY97 Documentation](https://www.nlsinfo.org/content/cohorts/nlsy97)
- [NLSY97 Technical Sampling Report](https://www.bls.gov/nls/nlsy97/other-documentation/technical-sampling-report/nlsy97-technical-sampling-report.pdf)
- `NLSY97_expanded.cdb` — downloaded extract codebook

## Dataset Nutrition Labels

We created nutrition labels to summarize the two primary datasets used in our project.

- [PSID Nutrition Label](docs/PSID_Nutrition_Label.pdf)
- [NLSY97 Nutrition Label](docs/NLSY97_Nutrition_Label.pdf)

---

## 3. Research Questions and Data Scope

### Research Question

How strongly do early childhood family income and parental education levels predict adult earning potential and employment status?

We treat this as one question studied in two primary datasets (PSID and NLSY97) and compared against two secondary datasets (Opportunity Insights and ELS). The analysis shows associations only. It does not show that family background causes later outcomes.

### Target Population

We want to study young people growing up in the United States in the late 1990s and early 2000s, and how their family's income and their parents' education relate to their earnings and employment as adults. This is broader than any one dataset covers.

### Access Frame

| Dataset | Who could actually be in the data |
|---|---|
| PSID (TAS extract) | Members of PSID families who were eligible for the Child Development Supplement and Transition into Adulthood Supplement. The PSID began in 1968 with a nationally representative sample of over 18,000 people in about 5,000 families and follows their descendants. The supplements have their own eligibility rules, so not every PSID participant is included. |
| NLSY97 | 8,984 people born between 1980 and 1984 who were living in the United States when sampled in 1997: 6,748 in the cross-sectional sample and 2,236 in an oversample of Black and Hispanic youth. |
| Opportunity Insights | Summary values by parental household income percentile (100 rows). The publisher's readme describes outcomes measured from tax forms (W-2, Schedule C, and Form 1099), so only people who appear in those records are reflected. |
| ELS | Summary percentages for people who were high school sophomores in 2002. The two tables cover only those who held an associate's degree or higher, or a bachelor's degree or higher, as of 2012. |

### Sample

- **PSID:** All 2,362 rows of the TAS extract (`J365605.csv`) are kept. Each analysis then drops rows with missing values in the variables it needs. After linking to `M365605.csv`, 2,097 records (88.8%) have matching household identifiers and 265 (11.2%) are unconfirmed.
- **NLSY97:** All 8,984 respondents are kept in the cleaned file. For the comparison with Opportunity Insights, we removed respondents missing childhood household income or adult wages, leaving 4,725 respondents (52.6% of the original sample). In addition, 1,162 skipped wage values were set to 0 for respondents who reported no job income.
- **Opportunity Insights:** All 100 parental income percentile rows.
- **ELS:** Two summary tables, each with four employment categories and three parental SES groups (low, middle, high). We have no individual-level ELS records.
- **Weights:** Our notebook does not apply survey weights. Our results describe the respondents in these files, not the U.S. population. In NLSY97 this means Black and Hispanic respondents are overrepresented relative to their share of the population because of the oversample.

### Groups and Observations Missing From the Data

- Families and individuals who left PSID or never met CDS/TAS eligibility rules.
- NLSY97 respondents who did not complete the 2021 interview. The 2021 wage question has 2,271 non-interview cases (25.3% of 8,984), so adult earnings are unavailable for about a quarter of the original sample.
- NLSY97 respondents who refused or didn't know childhood household income or parental education, and those who skipped wages.
- People born outside 1980–1984 (NLSY97), and adults whose family background is not captured by the household head and spouse in PSID.
- People who earn income that is not wages or salary (for example, self-employment) because our earnings variables measure wages and salary.
- People without a degree, in the ELS tables, which cover only associate's-or-higher and bachelor's-or-higher graduates.
- Individual-level information in Opportunity Insights and ELS. These are aggregates, so we cannot see differences within a group.

### Limitations

- **Association, not causation.** Family income and parental education are related to many other factors (neighborhood, school quality, discrimination, health) that are not in our extracts. NLSY97 has only 12 selected columns from a much larger survey.
- **Missing data may not be random.** If people with missing adult earnings differ from those with complete data (for example, lower-income families may be harder to re-interview), our estimates could be biased in either direction. We did not test for this.
- **PSID parental education is the education of the household head and spouse,** who are not necessarily the respondent's parents.
- **Different years and measures.** PSID family income is from 1996 (collected in 1997) and employment is from 2021. NLSY97 childhood income is from 1997 and adult employment refers to 2020 (asked in the 2021 survey). Opportunity Insights measures W-2 earnings at age 30. These are not directly comparable measures.
- **Comparisons across datasets are group-level.** We compare NLSY97 income groups to Opportunity Insights percentiles and to ELS SES groups, so they cannot be used to draw conclusions about individuals.
- **ELS tables are conditional on educational attainment,** so they say little about people without a degree.

---

## 4. Variable Codebook

### PSID Variables

| Column Name | Data Type | Units | Meaning | Range / Allowed Values | Missing Values | Source |
|---|---|---|---|---|---|---|
| ER12079 | Float | USD | Family income in 1996 | Observed: -64,500 to 386,250 | 206 nulls | J365605.csv |
| ER12222 | Integer | Education code | Household head's education | Observed: 0–17 | 99 → null; 308 total nulls | J365605.csv; eda.ipynb |
| ER12223 | Integer | Education code | Spouse's education | Observed: 0–17 | 99 → null; 286 total nulls | J365605.csv; eda.ipynb |
| TA210679 | Integer | USD | Adult wages/salary | Observed: 0–180,000 | 9999999 → null; 121 total nulls | J365605.csv; eda.ipynb |
| TA210220 | Integer | Employment code | Adult employment status | Observed: 1, 2, 3, 5, 6, 7, 99 | No nulls; code 99 requires verification | J365605.csv |
| TA210225 | Integer | Weeks | Number of weeks worked | Observed: 0–52 | No nulls observed | J365605.csv |
| ER30001 | Integer | ID | PSID 1968 family identifier | Dataset-specific identifier | Verify official missing codes | J365605.csv |
| ER30002 | Integer | Person number | PSID person identifier | Dataset-specific identifier | Verify official missing codes | J365605.csv |
| CDSCUMID68 | Integer | ID | Corresponding family identifier in linkage file | Dataset-specific identifier | Verify official missing codes | M365605.csv |
| CDSCUMPN | Integer | Person number | Corresponding person identifier in linkage file | Dataset-specific identifier | Verify official missing codes | M365605.csv |
| ER33401 | Integer | ID | PSID family identifier used in the 1997 household consistency check | Dataset-specific identifier | Verify official missing codes | J365605.csv |
| ER33402 | Integer | Person number | PSID person/sequence identifier used in the 1997 household consistency check | Dataset-specific identifier | Verify official missing codes | J365605.csv |
| CRFID97 | Integer | ID | 1997 family identifier in the linkage file | Dataset-specific identifier | Verify official missing codes | M365605.csv |
| CRSN97 | Integer | Person number | 1997 sequence identifier in the linkage file | Dataset-specific identifier | Verify official missing codes | M365605.csv |


### NLSY97 Variables

| Column Name | Data Type | Units | Meaning | Range / Allowed Values | Missing Values | Source |
|---|---|---|---|---|---|---|
| R1204500 | Integer | USD | Childhood household income | Numeric; negative income values must be distinguished from missing codes | -1 through -5 → null; 2,396 special-code values | NLSY97_expanded.csv; eda.ipynb |
| R1302400 | Integer | Education code | Father's education | Official categories require verification | -1 through -5 and 95 → null; 1,864 special-code values | NLSY97_expanded.csv; eda.ipynb |
| R1302500 | Integer | Education code | Mother's education | Official categories require verification | -1 through -5 and 95 → null; 694 special-code values | NLSY97_expanded.csv; eda.ipynb |
| U5753500 | Integer | USD | Adult wages/salary | Nonnegative after applicable cleaning | -1 through -5 → null, except zero-wages rule; 3,783 special-code values | NLSY97_expanded.csv; eda.ipynb |
| U5753300 | Integer | Response code | Whether respondent received job income | Observed: 0, 1, and negative survey codes | -1 through -5 → null | NLSY97_expanded.csv; eda.ipynb |
| Z9061911 | Integer | Weeks | Number of weeks worked | Official allowed range requires verification | -1 through -5 → null; 1,746 special-code values | NLSY97_expanded.csv; eda.ipynb |
### Derived Variables

| Column Name | Data Type | Units | Meaning | Range / Allowed Values | Missing Values | Source |
|---|---|---|---|---|---|---|
| household_status | String | None | Whether PSID household identifiers agree across the two linked files | Match, Mismatch, Unconfirmed | Unconfirmed indicates insufficient information | eda.ipynb, cell 52 |
| Average Wages | Float | USD | Mean adult wages for each PSID employment category after filtering | Nonnegative | Excludes rows with missing or invalid wages | eda.ipynb, cell 58 |
| earnings | Numeric | USD | Average of female and male W-2 earnings at age 30 in Opportunity Insights | Numeric | NaN if source values missing | eda.ipynb, cell 93 |
| relative | Float | Ratio | Earnings divided by the corresponding dataset's mean earnings | Nonnegative for nonnegative earnings | NaN if earnings missing | eda.ipynb, cell 93 |
| group | Integer | Income group | NLSY97 respondents divided into 20 ranked childhood-income groups | 0–19 | Rows with missing income or wages excluded | eda.ipynb, cell 93 |
| percentile | Float | Percentile | Parental income percentile used for comparing adult earnings | OI source percentiles; NLSY97 group midpoints 2.5–97.5 | Depends on source | eda.ipynb, cell 93 |

### Secondary Dataset Variables

| Dataset | Column Name | Data Type | Units | Meaning | Range / Allowed Values | Missing Values | Source |
|---|---|---|---|---|---|---|---|
| Opportunity Insights | par_pctile | Integer | Percentile | Parental household income percentile | Observed: 1–100 | 0 missing | gender_nat.xls |
| Opportunity Insights | w2wages_30_f | Float | USD | Average female W-2 earnings at age 30 | Observed: 20,034.87–54,231.84 | 0 missing | gender_nat.xls |
| Opportunity Insights | w2wages_30_m | Float | USD | Average male W-2 earnings at age 30 | Observed: 24,414.30–81,073.71 | 0 missing | gender_nat.xls |
| ELS | Employment Status | String | Category | Employment outcome measured in 2012 | Categories from source tables | Verify source table | sophomorefinances2a.csv; sophomorefinances2b.csv |
| ELS | Low SES | Float | Percent | Employment outcome percentage for low socioeconomic status group | 0–100 | NaN if missing | ELS CSV files; eda.ipynb |
| ELS | Middle SES | Float | Percent | Employment outcome percentage for middle socioeconomic status group | 0–100 | NaN if missing | ELS CSV files; eda.ipynb |
| ELS | High SES | Float | Percent | Employment outcome percentage for high socioeconomic status group | 0–100 | NaN if missing | ELS CSV files; eda.ipynb |

---

## 5. Data Processing and Reproduction Recipe

### Data Downloads

The analysis uses four datasets: PSID, NLSY97, Opportunity Insights, and ELS. The raw files are organized in the repository's `data/raw/` directory.

| Dataset | File | Repository Location |
|---|---|---|
| PSID TAS | J365605.csv | data/raw/psid/ |
| PSID CDS Linkage | M365605.csv | data/raw/psid/ |
| NLSY97 | NLSY97_expanded.csv | data/raw/nlsy97/ |
| Opportunity Insights | gender_nat.xls | data/raw/opportunity_insights/ |
| ELS | sophomorefinances2a.csv | data/raw/els/ |
| ELS | sophomorefinances2b.csv | data/raw/els/ |

The datasets are loaded in `eda.ipynb` using Polars and Pandas. PSID and NLSY97 are loaded with `pl.read_csv()`, the ELS files with `pd.read_csv()`, and Opportunity Insights with `pd.read_excel()`.

The notebook uses relative file paths, so it should be run from the repository's root directory.

Original publisher download URLs and access instructions should be added here to make the download process fully reproducible.

### Data Cleaning and Preprocessing

#### PSID Cleaning
The PSID dataset was cleaned using Polars in `eda.ipynb`.

1. Loaded `J365605.csv`, containing 2,362 rows and 25 columns.
2. Replaced missing-value code `99` with null in `ER12222` (102 replacements).
3. Replaced missing-value code `99` with null in `ER12223` (80 replacements).
4. Replaced missing-value code `9999999` with null in `TA210679` (121 replacements).
5. No rows were removed during cleaning.

| Variable | Values Replaced | Total Nulls After Cleaning |
|---|---:|---:|
| ER12222 | 102 | 308 |
| ER12223 | 80 | 286 |
| TA210679 | 121 | 121 |

Rows before cleaning: **2,362**

Rows after cleaning: **2,362**

Relevant code: `eda.ipynb`.

#### NLSY97 Cleaning

The NLSY97 dataset was cleaned using Polars.

1. Loaded `NLSY97_expanded.csv`, containing 8,984 rows and 12 columns.
2. Replaced missing-value codes `-1` through `-5` with null in selected analysis variables.
3. Replaced education code `95` with null for father's education (`R1302400`) and mother's education (`R1302500`).
4. Set adult wages (`U5753500`) to zero when the original record had `U5753300 = 0` and `U5753500 = -4`.
5. Preserved other valid numeric values, including negative income values that were not missing-value codes.

The raw dataset contained **1,162 records** satisfying the special zero-wages condition.

Relevant code: `eda.ipynb`.
#### ELS Cleaning

The ELS datasets were cleaned using Pandas.

1. Loaded `sophomorefinances2a.csv` and `sophomorefinances2b.csv`.
2. Each original file contained eight rows and four columns.
3. Removed the initial metadata rows and used the appropriate employment-status and SES column headings.
4. Renamed the columns to `Employment Status`, `Low SES`, `Middle SES`, and `High SES`.
5. Converted SES percentage columns to numeric values, converting invalid entries to NaN.
6. Removed rows containing source citation text.
7. Reset dataframe indices.

Each cleaned table contains **4 employment categories and 4 columns**.

The first file represents Associate's degree or higher, while the second represents Bachelor's degree or higher.

Relevant code: `eda.ipynb`.

#### Opportunity Insights Cleaning

The Opportunity Insights dataset was loaded from `gender_nat.xls` using Pandas.

The original file contains **100 rows and 25 columns**.

The analysis selected `par_pctile`, `w2wages_30_f`, and `w2wages_30_m`.

| Data Quality Check | Result |
|---|---:|
| Missing values in selected columns | 0 |
| Duplicate parental income percentiles | 0 |
| Negative female wages | 0 |
| Negative male wages | 0 |
| Rows retained | 100 |

No additional cleaning was required for the selected variables.

Relevant code: `eda.ipynb`.

### Filtering and Missing Values

#### PSID
Missing-value codes were converted to null during preprocessing.

Different analyses applied different filters depending on the required variables.

| Analysis | Original Rows | Rows Retained | Rows Excluded |
|---|---:|---:|---:|
| Family income vs. head education | 2,362 | 2,054 | 308 |
| Employment status vs. wages | 2,362 | 1,610 | 752 |
| Weeks worked (null filtering) | 2,362 | 2,362 | 0 |
| Employment status (null filtering) | 2,362 | 2,362 | 0 |

For family income versus head education, rows with missing values were excluded and education code `99` was filtered out.

For employment status versus wages, rows were retained when employment status was one of `1`, `2`, `3`, `5`, `6`, or `7`, wages were positive, and wages were not equal to `9999999`.

These filters apply to individual analyses rather than permanently removing records from the original dataset.

#### NLSY97

Missing-value codes `-1` through `-5` were converted to null for the selected analysis variables. Parental education code `95` was also converted to null.

An exception was made for adult wages: respondents with `U5753300 = 0` and original `U5753500 = -4` were assigned zero wages because their records indicated no job income.

For the comparison between NLSY97 and Opportunity Insights, rows with missing childhood household income or adult wages were removed using `dropna()`.

The resulting NLSY97 comparison dataset contained 4,725 respondents.

Relevant code: `eda.ipynb`, cells 20 and 93.

#### ELS

The first two rows of each ELS CSV were removed because they contained title and header information rather than analysis observations.

Rows containing source citations were also removed. Non-numeric values in the socioeconomic percentage columns were converted to NaN.

#### Opportunity Insights

The selected variables contained no missing values or duplicate parental income percentiles. All 100 parental income percentile rows were retained for the analysis.

### Dataset Joins

#### PSID Dataset Join

The PSID analysis uses two files:

- `J365605.csv`: Contains the PSID analysis variables.
- `M365605.csv`: Contains the PSID linkage information.

The datasets were joined using Polars in `eda.ipynb`.

**Join keys:**

| J365605.csv | M365605.csv |
|---|---|
| ER30001 | CDSCUMID68 |
| ER30002 | CDSCUMPN |

The notebook performs a left join:

```python
linked = psid_J.join(
    psid_M,
    left_on=["ER30001", "ER30002"],
    right_on=["CDSCUMID68", "CDSCUMPN"],
    how="left"
)
```

A left join retains all records from the PSID analysis file and adds matching information from the linkage file.

**Verified join results:**

| Measurement | Count |
|---|---:|
| Left dataset rows | 2,362 |
| Matched left-side records | 2,097 |
| Unmatched left-side records | 265 |
| Rows after left join | 2,362 |

The notebook also creates a `household_status` variable by comparing 1997 household identifiers:

- `Match`: Household identifiers agree.
- `Mismatch`: Household identifiers disagree.
- `Unconfirmed`: One or more required identifiers are missing.

The household consistency check reports 2,097 `Match` records and 265 `Unconfirmed` records.

The household consistency check and person-key join are separate operations, even though their observed counts are the same.

Relevant code: `eda.ipynb`.

#### Other Datasets

NLSY97, ELS, and Opportunity Insights were analyzed separately rather than joined to PSID.

The NLSY97 and Opportunity Insights results were compared using aggregated parental income groups and normalized adult earnings. This was a comparison of trends, not a record-level join.

### Final Analysis Dataframe

The project uses multiple cleaned analysis dataframes rather than one combined dataframe. Each dataset is analyzed separately to investigate relationships between childhood family background and adult economic outcomes.

#### PSID

The PSID analysis uses cleaned family income, parental education, adult wages, employment status, and weeks worked variables.

The PSID analysis file is also linked with the PSID linkage file using individual identifiers. The resulting dataframe includes a derived `household_status` variable for checking household identifier consistency.

#### NLSY97

The NLSY97 analysis uses childhood household income, parental education, adult wages, job income status, and weeks worked.

For the comparison with Opportunity Insights, the notebook selects childhood household income and adult wages, removes rows missing either value, and renames the selected columns to `income` and `wages`.

The resulting comparison dataset contains 4,725 respondents.

Respondents are ranked by childhood household income and divided into 20 groups. Mean adult wages are calculated for each group.

#### Opportunity Insights

The Opportunity Insights analysis uses parental income percentile and average W-2 earnings at age 30 for females and males.

For the cross-dataset comparison, the notebook averages female and male earnings at each parental income percentile. These earnings are then divided by the overall mean to create a relative earnings measure.

The original dataset contains 100 parental income percentile observations.

#### ELS

The ELS analysis uses cleaned summary tables containing employment outcomes across low, middle, and high parental socioeconomic status groups.

The two ELS tables represent different educational attainment categories and are analyzed separately.

#### Reproduction

The processing and analysis steps are implemented in `eda.ipynb`. The notebook contains the code used to load the raw files, clean variables, link PSID records, create derived variables, and generate exploratory analyses and comparisons.

The datasets are not combined into one universal analysis table because they contain different populations, measurement years, and levels of aggregation.

### Reproduction Requirements

To reproduce the analysis:

1. Obtain the six raw data files listed in the Data Downloads section.
2. Place them in their corresponding `data/raw/` directories.
3. Install the required Python packages, including Polars, Pandas, and the Excel-reading dependencies for `.xls` files.
4. Open `eda.ipynb` from the repository root.
5. Run the notebook cells in order.
6. Verify the cleaning counts, filtering results, join results, and generated analysis outputs.

Original publisher download URLs, official survey-code definitions, and exact repository code links still need to be added or verified before submission.

---

## 6. Data Access and Reuse (FAIR Principles)

Documentation and terms of use were checked on October 28, 2026. None of these sources provides a DOI that we found, so we use the publishers' stable web addresses as persistent links.

### PSID Access and Reuse

| Principle | Details |
|---|---|
| **Findable** | PSID home: https://psidonline.isr.umich.edu/. Catalog entry: https://catalog.data.gov/dataset/the-panel-study-of-income-dynamics-psid. Study design: https://psidonline.isr.umich.edu/CDS/Guide/StudyDesign.aspx. Our extracts are identified by the publisher's extract numbers J365605 (TAS) and M365605 (CDS cumulative linkage file). |
| **Accessible** | Free, but users must register on the PSID website and agree to the Conditions of Use before downloading. Each co-investigator and student who uses the data, including extracts, must register separately. Some PSID data are sensitive or restricted and require an application with IRB approval; we used public-release data only. |
| **Interoperable** | Files in the repository are CSV (`J365605.csv`, `M365605.csv`), with Excel versions (`.xlsx`), a variable label text file, and an HTML codebook (`J365605_codebook.html`). Variables use PSID alphanumeric IDs (for example, ER12079), and individuals are identified by the 1968 family ID and person number (ER30001, ER30002). |
| **Reusable** | No open license such as Creative Commons applies. Use is governed by the PSID Conditions of Use (https://simba.isr.umich.edu/U/CondUse.aspx). The terms say the data may be used only for scientific research and aggregate statistical reporting, must be cited in any publication, and may not be shared with others. The terms prohibit transferring PSID public data, including user-created extracts, to any third party. People who need to share extracts must deposit them in the ICPSR-PSID Data Extract Repository. The current terms also prohibit using AI programs and large language models in conjunction with PSID data. **We therefore treat our PSID extracts and the data derived from them as not redistributable.** Any public release of our work should contain code and aggregate results only. |
| **Version / date accessed** | Extracts J365605 and M365605. The exact download date was not recorded in our repository. PSID documentation and terms were checked on October 28, 2026. |

### NLSY97 Access and Reuse

| Principle | Details |
|---|---|
| **Findable** | BLS overview: https://www.bls.gov/nls/nlsy97.htm. Documentation: https://www.nlsinfo.org/content/cohorts/nlsy97. Technical sampling report: https://www.bls.gov/nls/nlsy97/other-documentation/technical-sampling-report/nlsy97-technical-sampling-report.pdf. |
| **Accessible** | NLS public-use data are available at no cost through NLS Investigator, an online search and extraction tool (see https://www.bls.gov/nls/getting-started/accessing-data.htm). Restricted files (geocodes, zip code and census tract data, school surveys) require written agreement with BLS and are not used here. The only geographic variable in the public data is South/non-South residence. |
| **Interoperable** | We use `NLSY97_expanded.csv`. The extract also includes `.dat`, `.sas`, `.sps`, `.dct`, `.do`, and `.cdb` files so it can be loaded into SAS, SPSS, Stata, and other tools. Variables use NLS reference numbers (for example, R1204500), and missing values use standard codes (-1 to -5). |
| **Reusable** | We did not find a named license (such as Creative Commons) attached to the public-use files. BLS states that everything it publishes is in the public domain, except previously copyrighted photographs and illustrations, and asks that users cite BLS as the source (https://www.bls.gov/opub/copyright-information.htm). We found no separate redistribution restriction on the public-use data, but we have not confirmed whether the NLS Investigator terms add any. The public-use files exclude confidential variables to protect respondents, and we do not attempt to identify or locate any respondent. |
| **Version / date accessed** | Extract `NLSY97_expanded`, covering the survey rounds described in our README (rounds 1–21, 1997–2023). Our adult earnings variables come from the 2021 round and refer to 2020. The exact download date was not recorded in our repository. Documentation and terms were checked on October 28, 2026. |

### Secondary Dataset Access and Reuse

**Opportunity Insights (Online Data Table 3: national estimates by parent percentile and gender)**

| Principle | Details |
|---|---|
| **Findable** | https://opportunityinsights.org/data/ |
| **Accessible** | Publicly downloadable from the Opportunity Insights data library, with no registration found. |
| **Interoperable** | `gender_nat.xls` (Excel) plus the publisher's readme (`gender_nat_readme.pdf`) with a codebook. Columns follow a `[outcome]_[gender][fam]` naming pattern. |
| **Reusable** | We did not find a license statement for this table. Opportunity Insights states that it welcomes reuse of its figures and charts and requires proper credit to Opportunity Insights. Whether the underlying data table may be redistributed is not documented in the sources we reviewed. Because the file is a small public aggregate table, we cite it as the source and link to the publisher rather than treating it as ours to relicense. |
| **Version / date accessed** | Table version is not stated in the files we hold. Documentation checked on October 28, 2026. |

**Education Longitudinal Study of 2002 (ELS:2002), NCES**

| Principle | Details |
|---|---|
| **Findable** | https://nces.ed.gov/surveys/els2002/ |
| **Accessible** | We use two published summary tables (`sophomorefinances2a.csv` and `sophomorefinances2b.csv`). Their source note says they come from the ELS:2002 Third Follow-up restricted-use file. Individual-level restricted-use data require a license from NCES (https://nces.ed.gov/surveys/els2002/obtainingrest.asp). A public-use version is available through NCES's online tools (https://nces.ed.gov/surveys/els2002/avail_data.asp). We did not use either. |
| **Interoperable** | CSV, with title and source rows above and below the data that we removed during cleaning. |
| **Reusable** | No license statement is attached to the table files we hold. NCES says it releases data for statistical purposes only and prohibits record matching or deductive disclosure of individual respondents. Because we hold only aggregate percentages, we cite NCES as the source and do not redistribute anything beyond those summary values. |
| **Version / date accessed** | The tables describe 2012 outcomes for the 2002 sophomore cohort (Third Follow-up). The download date was not recorded. Documentation checked on October 28, 2026. |

---

## 7. Representation and Ethical Considerations (CARE Principles)

### Representation in the Data

- **PSID** represents members of families in a long-running probability-based sample of U.S. families. Our TAS extract (2,362 people) covers only the descendants who were eligible for the supplements.
- **NLSY97** represents people born 1980–1984 who lived in the U.S. in 1997. It deliberately oversamples Black and Hispanic youth (2,236 of 8,984 respondents), which helps with estimates for those groups but means unweighted totals do not mirror the U.S. population. Our extract includes sex, birth year, and a four-category race/ethnicity code.
- **Opportunity Insights** and **ELS** do not describe individuals in our files. They describe groups: children by parental income percentile and gender (Opportunity Insights), and 2002 sophomores by parental SES (ELS).

### Underrepresented or Missing Groups

- Groups that were not oversampled in NLSY97 (for example, Asian American and Native American respondents) have few observations, so estimates for them are imprecise or cannot be made reliably.
- People with missing childhood income, parental education, or adult wages are less likely to appear in our analyses (about 47% of NLSY97 respondents are dropped from the Opportunity Insights comparison). These respondents may differ from those who answered every question.
- Children raised by guardians other than the household head and spouse, or in unstable households, may be misclassified by PSID's parental education variables.
- Adults who left the survey or did not hold wage or salary jobs are missing or recorded as zero earnings.
- The ELS tables only include degree holders, so people without a degree are not represented.
- The datasets use fixed race, ethnicity, and gender categories, which may not match how respondents identify.

### Potential Biases and Limitations

- **Selection and attrition bias:** non-response in later rounds (for example, 2,271 NLSY97 non-interviews in 2021) can distort adult-outcome estimates.
- **Measurement bias:** self-reported income and education, topcoded incomes, and use of the household head's education as a stand-in for parents.
- **Ecological fallacy:** matching group-level Opportunity Insights and ELS summaries to individual-level data cannot tell us what happens to any individual.
- **Possible harms from misuse or misreading:**
  - Reading associations as destiny, or as evidence that family background (or race, ethnicity, or gender) *causes* lower earnings, can reinforce stereotypes about low-income families and communities of color. Differences in outcomes may reflect discrimination, unequal schools, or neighborhood conditions that our variables do not measure.
  - Using results like these to make decisions about individual students, applicants, or workers (for example, screening based on parental income or education) would be unsupported and unfair, because the data describe averages, not individuals.
  - Framing results around "earning potential" can suggest that ability is fixed by family background. Our data measure realized wages, not potential.
- **Who is affected by use of the data:** children and young adults from low-income and lower-education families, and members of racial and ethnic groups whose outcomes are discussed. Policymakers, schools, and employers who read results like these may act on them.

### Privacy and Responsible Use

- The data include sensitive personal information: household income, education, race and ethnicity, employment, and wages.
- NLSY97 public-use data omit confidential variables such as geocodes to reduce the risk that respondents can be identified, and some incomes are topcoded. We do not attempt to identify, link, or locate any respondent.
- PSID's Conditions of Use limit use to scientific research and aggregate statistical reporting and prohibit transferring extracts. We report only aggregate results and treat the PSID extracts as not redistributable.
- NCES prohibits record matching or deductive disclosure for ELS. We hold only summary tables.
- We report group-level patterns and avoid presenting any individual case.

**CARE principles (Collective benefit, Authority to control, Responsibility, Ethics).** CARE was developed for Indigenous data governance, and these datasets were not collected under it. We use the four principles as a lens:

- **Collective benefit:** the research aims to help understand how family background relates to adult economic outcomes, which could inform policy for the groups studied. The publishers' documentation we reviewed does not describe how benefits are shared with participating communities.
- **Authority to control:** respondents participated in surveys, and we did not find documentation of how much say they or their communities have over later reuse. PSID and BLS use confidentiality rules instead of community governance.
- **Responsibility:** we cite sources, document processing and missing data, and describe limits so that results are not overstated.
- **Ethics:** we avoid re-identification, avoid causal or stereotyping language, and note that consent and ethical-review details for the survey waves we use were not documented in the files we reviewed.
