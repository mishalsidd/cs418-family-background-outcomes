# EDA Milestone Checklist

Each person should work in their own notebook first. We will combine
the finished analysis into eda.ipynb before submitting.

## Person 1 — Saima: NLSY97

### Already completed
- [x] Organized the dataset folders and added Opportunity Insights data.
- [x] Fixed the PSID paths in data_acquisition.ipynb.
- [x] Created eda.ipynb and loaded the primary dataset files.
- [x] Generated shapes, glimpses, null counts, and summary statistics.
- [x] Checked all three primary files for exact duplicate rows; none found.
- [x] Added initial PSID missing-value and anomaly notes.
- [x] Created psid_clean to handle unknown education and wage codes.
- [x] Downloaded expanded NLSY97 data with income, parental education,
      adult wages, job-income receipt, and weeks worked.
- [x] Checked the NLSY97 codebook and counted missing-response codes.
- [x] Created nlsy97_clean and kept valid negative household income.
- [x] Excluded education code 95 from numeric comparisons.
- [x] Restored 1,162 skipped wage amounts to zero for respondents
      who reported receiving no job income.
- [x] Added NLSY97 cleaning notes and checked the cleaned summaries.

### Remaining
- [ ] Check valid ranges, category codes, and unique person IDs.
- [ ] Review earlier Markdown so it matches the expanded NLSY97 file.
- [ ] Plot household income, mother's education, father's education,
      adult wages, weeks worked, and job-income receipt.
- [ ] Describe the center, spread, skew, and unusual values beside
      each distribution plot.
- [ ] Make a relationship plot of parental education versus adult wages.
- [ ] Explain what the plot shows and why it matters.
- [ ] State whether the pattern was expected and what to explore next.
- [ ] Commit the remaining analysis.

## Person 2 — PSID

- [ ] Review the existing PSID profile and initial cleaning.
- [ ] Check employment codes, wage-receipt codes, ambiguous zeros,
      and valid ranges.
- [ ] Review the linkage file and check unique person keys.
- [ ] Check whether respondents belonged to the recorded 1997
      household before using its income and education as background.
- [ ] Explain the limits of using household-head/spouse education
      as a measure of parental education.
- [ ] Plot family income, both education measures, adult wages,
      employment status, and weeks worked.
- [ ] Add distribution notes beside each plot.
- [ ] Make a relationship plot of family income versus adult wages,
      using a clearly defined sample.
- [ ] Add "so what?", expected/unexpected, and "what next?" notes.
- [ ] Commit the contribution.

## Person 3 — Secondary Datasets

- [ ] Load Opportunity Insights and ELS.
- [ ] Check the columns used, missing values, unusual codes, and units.
- [ ] Explain that these files contain group summaries rather than
      individual records.
- [ ] Plot Opportunity Insights parental income versus adult earnings
      or employment.
- [ ] Compare the pattern with a primary-dataset result, noting
      differences in measures and populations.
- [ ] Check that the comparison follows the acquisition checkpoint's
      plan and explain any changes.
- [ ] Add "so what?", expected/unexpected, and "what next?" notes.
- [ ] Summarize ELS and explain how it supports the project.
- [ ] Consider an additional ELS employment-by-parent-SES plot.
- [ ] Commit the contribution.

## Person 4 — Combine Work and Documentation

- [ ] Combine the team's code, outputs, and notes into eda.ipynb.
- [ ] Check that all required primary-dataset profiles are included.
- [ ] Combine anomaly counts and actions into one table.
- [ ] Check that every important research feature has a distribution plot.
- [ ] Include at least 3 relationship plots total, including at least
      1 secondary-data join or comparison.
- [ ] Check that every relationship plot has "so what?", expectations,
      and "what next?" notes.
- [ ] Check readable axes, labels, units, and overplotting.
- [ ] Work with the team to restate or revise the research questions
      and explain what changed.
- [ ] Write EDA.md covering all six steps and referencing the plots.
- [ ] Add an "Exploratory analysis" section to README.md with dataset
      basics, revised questions, anomaly notes, and major findings.
- [ ] Restart the kernel and run the final notebook from top to bottom.
- [ ] Save all outputs and commit the combined work.
- [ ] Check that every group member has at least one contribution commit.

## Everyone

- [ ] Review their own findings and written explanations.
- [ ] Describe associations without claiming that they prove causation.
- [ ] Coordinate changes to shared files to avoid overwriting each other.
