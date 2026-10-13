# cs418-family-background-outcomes

CS 418 Group Project: Asha, Mishal, Safiyyah, Saima

Group's Research Question: How strongly do early childhood family income and parental education levels predict adult earning potential and employment status?

Two Primary Datasets:
1) https://catalog.data.gov/dataset/the-panel-study-of-income-dynamics-psid?utm
2) NLSY97 (National Longitudinal Survey of Youth 1997) – NLSY97 1997-2023 (rounds 1-21), https://www.nlsinfo.org/content/cohorts/nlsy97?utm

Two Secondary Datasets:
1) https://opportunityinsights.org/data/?utm
2) https://nces.ed.gov/surveys/els2002/?utm

Notes about shape of data:
1. J365605.csv - (2362, 25)
2. M365605.csv - (21511, 116)

## Exploratory analysis

**Dataset basics:** PSID has 2,362 people and 25 columns (plus a linkage file with 21,511 rows). NLSY97 has 8,984 people and 12 columns. The secondary datasets are Opportunity Insights (100 parental income percentiles) and ELS (group percentages).

**Research question:** How strongly do early childhood family income and parental education levels predict adult earning potential and employment status? We kept the same question after the exploratory analysis. The plots show associations and not predictions, so the modeling step will test how strongly. We will measure employment with weeks worked and whether someone had job income, and in PSID parental education is the household head's and spouse's education.

**Anomaly notes:** Unknown codes (99 in PSID education, 9,999,999 in PSID wages, and negative codes in NLSY97) were treated as missing. NLSY97 education code 95 was left out of education comparisons, and 1,162 skipped NLSY97 wages were set to 0 for people with no job income. ELS source notes were removed. There were no duplicate rows. The full table is at the end of `eda.ipynb`.

**Major findings:**

- Adult earnings go up with family income in the Opportunity Insights and NLSY97 data, and the two follow a very similar pattern.
- In PSID, families with more-educated household heads tended to have higher income.
- In ELS, the low parental SES group had higher unemployment than the middle and high groups.
- These are patterns and do not show that family background causes the differences.

See `eda.ipynb` for the code and `EDA.md` for the full write-up.
