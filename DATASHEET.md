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

### Target Population

### Access Frame

### Sample

### Limitations

---

## 4. Variable Codebook

### PSID Variables

### NLSY97 Variables

### Derived Variables

### Secondary Dataset Variables

---

## 5. Data Processing and Reproduction Recipe

### Data Downloads

### Data Cleaning and Preprocessing

### Filtering and Missing Values

### Dataset Joins

### Final Analysis Dataframe

---

## 6. Data Access and Reuse (FAIR Principles)

### PSID Access and Reuse

### NLSY97 Access and Reuse

### Secondary Dataset Access and Reuse

---

## 7. Representation and Ethical Considerations (CARE Principles)

### Representation in the Data

### Underrepresented or Missing Groups

### Potential Biases and Limitations

### Privacy and Responsible Use