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

How strongly do early childhood family income and parental education predict adult earnings and employment? The analysis only looks at associations. Nothing here shows that family background causes later outcomes.

### Target Population

Young people growing up in the U.S. in the late 1990s and early 2000s, and how their family's income and their parents' education relate to their earnings and jobs as adults.

### Access Frame

Who could actually end up in each dataset:

- **PSID:** People in PSID families who were eligible for the Child Development Supplement and Transition into Adulthood Supplement. PSID started in 1968 with a nationally representative sample of 18,000+ people in about 5,000 families and follows their descendants, but the supplements have their own eligibility rules.
- **NLSY97:** 8,984 people born 1980-1984 who lived in the U.S. in 1997 (6,748 in the main sample, 2,236 in an oversample of Black and Hispanic youth).
- **Opportunity Insights:** Summary numbers for 100 parental income percentiles, based on tax records (W-2, Schedule C, 1099). Only people who show up in those records count.
- **ELS:** Summary percentages for 2002 high school sophomores, but only the ones who ended up with an associate's or bachelor's degree or higher by 2012.

### Sample

- **PSID:** All 2,362 rows of the TAS file are kept, then each analysis drops rows missing the variables it needs. After linking to the CDS file, 2,097 rows (88.8%) have matching household IDs and 265 (11.2%) don't.
- **NLSY97:** All 8,984 respondents are in the cleaned file. For the Opportunity Insights comparison, anyone missing childhood income or adult wages was dropped, leaving 4,725 (52.6%). Another 1,162 skipped wages were set to 0 for people who reported no job income.
- **Opportunity Insights:** All 100 percentile rows.
- **ELS:** Two summary tables only, with no individual-level records.
- **Weights:** The notebook doesn't use survey weights, so results describe the people in these files, not the whole U.S. population. In NLSY97, Black and Hispanic respondents are overrepresented because of the oversample.

### Groups Missing From the Data

- People who dropped out of PSID or weren't eligible for CDS/TAS.
- NLSY97 respondents who skipped the 2021 interview (2,271 non-interviews, about 25% of 8,984), so adult earnings are missing for about a quarter of the sample.
- People who refused or didn't know their childhood income or parents' education.
- People born outside 1980-1984 (NLSY97).
- People whose income isn't wages or salary, like self-employed workers.
- People without a degree in the ELS tables.
- Individual-level info in Opportunity Insights and ELS, since those are group summaries.

### Limitations

- **Association, not causation.** Things like neighborhood, school quality, and discrimination affect outcomes but aren't in the data. The NLSY97 file is only 12 columns from a much bigger survey.
- **Missing data may not be random.** If people with missing earnings differ from people who answered, results could be biased. This wasn't tested.
- **PSID "parental education"** is really the household head's and spouse's education, who may not be the respondent's parents.
- **Different years and measures.** PSID income is from 1996 and employment is from 2021. NLSY97 income is from 1997 and employment is from 2020. Opportunity Insights uses W-2 earnings at age 30. These don't line up perfectly.
- **Comparisons across datasets are group-level,** so they can't say anything about individuals.
- **ELS tables only cover degree holders,** so they say little about people without a degree.

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

All documentation and terms were checked on October 28, 2026. No DOIs turned up for any of these, so the links below are the publishers' own stable pages. Exact download dates weren't recorded for the files.

### PSID Access and Reuse

- **Findable:** https://psidonline.isr.umich.edu/ (also listed at https://catalog.data.gov/dataset/the-panel-study-of-income-dynamics-psid). The files are PSID extracts J365605 (TAS) and M365605 (CDS linkage).
- **Accessible:** Free, but users have to register on the PSID site and agree to the Conditions of Use. Every group member who uses the data has to register separately. Only public-release data was used.
- **Interoperable:** CSV files (also Excel, a labels text file, and an HTML codebook). Variables use PSID IDs like ER12079.
- **Reusable:** No open license. Use is governed by the PSID Conditions of Use (https://simba.isr.umich.edu/U/CondUse.aspx), which say:
  - Use is for scientific research and aggregate statistical reporting only.
  - PSID must be cited.
  - PSID data and user-made extracts can't be transferred to anyone else. To share extracts, they have to be deposited in the ICPSR-PSID Data Extract Repository.
  - The current terms also prohibit using AI programs and large language models with PSID data.

  Because of this, the PSID extracts and anything derived from them are treated as **not redistributable**. Any public release should only include code and aggregate results.
- **Version / date:** Extracts J365605 and M365605. Terms checked October 28, 2026.

### NLSY97 Access and Reuse

- **Findable:** https://www.bls.gov/nls/nlsy97.htm and https://www.nlsinfo.org/content/cohorts/nlsy97
- **Accessible:** Public-use data is free through NLS Investigator (see https://www.bls.gov/nls/getting-started/accessing-data.htm). Restricted files like geocodes need a BLS agreement and weren't used.
- **Interoperable:** The project uses `NLSY97_expanded.csv`. The extract also comes with SAS, SPSS, and Stata files and a `.cdb` codebook. Variables use NLS IDs like R1204500, and missing values are coded -1 to -5.
- **Reusable:** No named license turned up for the public-use files. BLS says everything it publishes is public domain (except photos and illustrations) and asks for a BLS citation (https://www.bls.gov/opub/copyright-information.htm). No separate redistribution restriction turned up either, but whether NLS Investigator adds one wasn't confirmed. No attempt is made to identify any respondent.
- **Version / date:** `NLSY97_expanded`, covering rounds 1-21 (1997-2023) per the README. The wage data comes from the 2021 round and refers to 2020. Terms checked October 28, 2026.

### Secondary Dataset Access and Reuse

**Opportunity Insights** (national estimates by parent percentile and gender)
- **Findable:** https://opportunityinsights.org/data/
- **Accessible:** Free to download, with no registration found.
- **Interoperable:** `gender_nat.xls` plus the publisher's readme PDF with a codebook.
- **Reusable:** No license turned up for this table. Opportunity Insights says it welcomes reuse of its figures and charts with proper credit. Whether the data table itself can be redistributed isn't documented in what was reviewed, so it's cited and linked instead.
- **Version / date:** Table version isn't stated in the files. Checked October 28, 2026.

**ELS:2002** (NCES)
- **Findable:** https://nces.ed.gov/surveys/els2002/
- **Accessible:** The project only uses two published summary tables, which say they come from the ELS:2002 Third Follow-up restricted-use file. Individual-level restricted data needs an NCES license (https://nces.ed.gov/surveys/els2002/obtainingrest.asp). Neither that nor the public-use version was used.
- **Interoperable:** CSV, with title and source rows that were removed during cleaning.
- **Reusable:** No license statement comes with the table files. NCES releases data for statistical purposes only and prohibits matching records to identify individuals. Only summary percentages are held, so NCES is cited and nothing beyond those numbers is redistributed.
- **Version / date:** Tables cover 2012 outcomes for the 2002 sophomore cohort. Checked October 28, 2026.

---

## 7. Representation and Ethical Considerations (CARE Principles)

### Representation in the Data

- **PSID:** Families from a long-running probability-based U.S. sample. The TAS file (2,362 people) only covers descendants eligible for the supplements.
- **NLSY97:** People born 1980-1984 who lived in the U.S. in 1997. Black and Hispanic youth are deliberately oversampled (2,236 of 8,984), which helps with estimates for those groups but means the unweighted data doesn't mirror the U.S. population.
- **Opportunity Insights and ELS:** These describe groups (parental income percentiles, parental SES groups), not individuals.

### Underrepresented or Missing Groups

- Groups that weren't oversampled in NLSY97 (like Asian American and Native American respondents) have fewer observations, so estimates for them are less reliable.
- About 47% of NLSY97 respondents get dropped from the Opportunity Insights comparison because of missing income or wages, and they may differ from people who answered everything.
- Kids raised by someone other than the household head or spouse may be misclassified by PSID's parental education variables.
- People who left the surveys or didn't have wage jobs are missing or show as zero earnings.
- People without a degree aren't in the ELS tables.
- The race, ethnicity, and gender categories are fixed and may not match how people identify.

### Potential Biases and Limitations

- **Selection bias:** Non-response in later rounds (like 2,271 NLSY97 non-interviews in 2021) can distort adult outcomes.
- **Measurement issues:** Self-reported income and education, topcoded incomes, and using the household head's education as a stand-in for parents.
- **Ecological fallacy:** Group-level summaries (Opportunity Insights, ELS) can't show what happens to any one person.
- **Possible harms:**
  - Reading these patterns as "family background causes lower earnings" can reinforce stereotypes about low-income families and communities of color. Real causes could include discrimination, unequal schools, or neighborhood conditions that weren't measured.
  - Using results like these to make decisions about individual students, applicants, or workers would be unfair, since the data only describes averages.
  - "Earning potential" can sound like ability is fixed by family background. The data actually measures wages people earned, not potential.
- **Who is affected:** Kids and young adults from low-income and lower-education families, and racial and ethnic groups whose outcomes are discussed, plus anyone (policymakers, schools, employers) who acts on results like these.

### Privacy and Responsible Use

- The data includes sensitive info like income, education, race and ethnicity, and wages.
- NLSY97 public-use data leaves out confidential variables like geocodes, and some incomes are topcoded. No attempt is made to identify or locate anyone.
- PSID limits use to research and aggregate reporting and bans passing along extracts, so only aggregate results are reported and those files aren't redistributed.
- NCES prohibits identifying individuals in ELS, and only summary tables are held.

**CARE principles.** CARE comes from Indigenous data governance and these datasets weren't collected under it, but the four principles are used here as a lens:

- **Collective benefit:** The project aims to help people understand how family background relates to adult outcomes, which could inform policy. The publishers' docs that were reviewed don't explain how benefits go back to participating communities.
- **Authority to control:** No documentation turned up on how much say participants have over later reuse. PSID and BLS rely on confidentiality rules instead.
- **Responsibility:** Sources are cited, and cleaning, missing data, and limits are documented so results aren't overstated.
- **Ethics:** Re-identification and causal or stereotyping language are avoided. Consent and ethical-review details for the survey waves used weren't documented in the files that were reviewed.
