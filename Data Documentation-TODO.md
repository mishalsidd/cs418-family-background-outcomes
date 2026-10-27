# CS 418 Checkpoint Four — Group To-Do List

**Due:** Wednesday, October 28, 2026  
**Deliverables:** `DATASHEET.md`, updated `README.md`, and commits from every group member.

## Person 1 — Dataset Background and Collection

- [ ] Document the **Motivation** section for each primary dataset.
  - [ ] Who created the dataset and why?
  - [ ] Who funded it, if documented?
- [ ] Document the **Composition** section.
  - [ ] What does one row represent?
  - [ ] How many rows and columns are there?
  - [ ] Is the dataset a complete collection or a sample?
  - [ ] What is missing or excluded?
- [ ] Document the **Collection Process** section.
  - [ ] How, when, and over what period was the data collected?
  - [ ] If people are represented, did they know or consent?
- [ ] Find and cite the original publisher's documentation for each claim.
- [ ] Mark undocumented information as "not documented by the publisher."
- [ ] Commit your changes to the shared repository.

**Deliverable:** Draft of the Motivation, Composition, and Collection Process sections in `DATASHEET.md`.

## Asha — Preprocessing, Existing Uses, and Dataset Maintenance

- [ ] Document the **Preprocessing** section for each primary dataset.
  - [ ] What cleaning, filtering, or labeling did the publisher perform?
  - [ ] Is the original raw data available?
  - [ ] Distinguish publisher preprocessing from our group's processing.
- [ ] Document the **Uses** section.
  - [ ] What has the dataset been used for previously?
  - [ ] What uses are inappropriate or unsupported?
- [ ] Document the **Distribution** section.
  - [ ] Where and how is the dataset published?
  - [ ] What license or terms of use apply?
- [ ] Document the **Maintenance** section.
  - [ ] Who maintains the dataset?
  - [ ] Is it updated? How can updates be identified?
- [ ] Locate and cite publisher documentation.
- [ ] Commit your changes to the shared repository.

**Deliverable:** Draft of the Preprocessing, Uses, Distribution, and Maintenance sections in `DATASHEET.md`.

## Person 3 — Research Scope, FAIR, and People Affected

- [ ] Document the scope of **each research question**.
  - [ ] Target population: Who or what do we want to study?
  - [ ] Access frame: Who or what could actually be included in the data?
  - [ ] Sample: Which observations do we actually analyze?
  - [ ] Identify groups or observations missing from the data.
  - [ ] Explain how these exclusions limit our conclusions.
- [ ] Create an **access and reuse checklist** for each dataset using FAIR principles.
  - [ ] Findable: Include a persistent source link.
  - [ ] Accessible: Explain how the data can be accessed.
  - [ ] Interoperable: Document file format and relevant data standards.
  - [ ] Reusable: Record license/terms and whether our processed data can be redistributed.
  - [ ] Record the version or date accessed.
- [ ] Document representation and potential misrepresentation of people.
  - [ ] Who is represented or underrepresented?
  - [ ] What biases or harms could result from analysis or decisions based on the data?
  - [ ] Consider CARE principles where relevant.
  - [ ] If the data does not describe people, identify who or what may be affected by its use.
- [ ] Coordinate with Persons 1 and 2 to avoid duplicating dataset background sections.
- [ ] Commit your changes to the shared repository.

**Deliverable:** Scope, access/reuse, and people-affected sections in `DATASHEET.md`.

## Person 4 — Codebook and Data-Rebuilding Recipe

- [ ] Create the **Codebook** for every column used in the analysis, including derived columns.
- [ ] For each column, document:
  - [ ] Column name
  - [ ] Data type
  - [ ] Units
  - [ ] Meaning
  - [ ] Range or allowed values
  - [ ] How missing values are coded
  - [ ] Raw source or code that creates the column
- [ ] Document the **Recipe** for rebuilding the analysis dataframe from raw files.
  - [ ] List every step in order.
  - [ ] Include download instructions and source links.
  - [ ] Document filters, type conversions, dropped rows, and derived columns.
  - [ ] Document joins with secondary datasets.
  - [ ] For each join, state the key and the number of matched and unmatched rows.
  - [ ] Link each step to the relevant repository code.
  - [ ] Verify that someone with the repository can reproduce the dataframe.
- [ ] Commit your changes to the shared repository.

**Deliverable:** Codebook and reproducible data-processing recipe in `DATASHEET.md`.

---

## Everyone — Final Review and Submission

- [ ] Confirm each primary dataset has all seven datasheet sections.
- [ ] Verify that factual claims cite publisher documentation or are supported by code we ran.
- [ ] Confirm missing documentation is explicitly identified.
- [ ] Check that all analysis columns appear in the codebook.
- [ ] Verify that all processing steps and join counts are documented.
- [ ] Review target populations, access frames, samples, limitations, and potential harms.
- [ ] Confirm access dates, persistent links, file formats, licenses, and reuse terms.
- [ ] Update `README.md` with a short **Data documentation** section.
  - [ ] Link to `DATASHEET.md`.
  - [ ] List every dataset, its source, and its license.
  - [ ] State the biggest data limitation in one or two sentences.
- [ ] Check that `DATASHEET.md` and `README.md` are committed and pushed to GitHub.
- [ ] Ensure every group member has at least one commit for this checkpoint.
- [ ] Submit the group's GitHub repository URL in Canvas.

## Suggested Workflow

1. Each person researches and drafts their assigned sections in the shared `DATASHEET.md`.
2. Coordinate early if multiple people need the same publisher sources or dataset information.
3. Person 4 checks the actual code with the rest of the group to verify the recipe and join counts.
4. Everyone reviews the completed document for accuracy and missing rubric requirements.
5. Update `README.md`, push all commits, and have one group member submit the repository URL in Canvas.

**Important:** Use publisher documentation and your own code output as evidence. Do not rely on AI-generated dataset facts or use AI to write the actual datasheet or README documentation.
