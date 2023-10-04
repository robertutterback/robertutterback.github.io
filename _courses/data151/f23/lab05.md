---
layout: class
title: "DATA 151, Fall 2023, Lab 05 / Hwk 03-04"
semester: f23
---

## Lab 05: Tidy Data

1. Read in the life expectancy data from `https://moderndive.com/data/le_mess.csv`.
2. Convert it into a "tidy" data frame.
3. Answer the following question: what were the top 5 and bottom 5
   countries in terms of life expectancy in 2016? In 1951?
4. Show a table with life expectancies for the United States, the
   United Kingdom, New Zealand, Francy, Germany, Denmark, and Sweden
   from 1960, 1970, 1980, 1990, 2000, and 2010. Rows should be years
   and columns should be countries.
5. Plot the life expectancy over time for the United States and
   another country of your choice.
   
Write an R Markdown file containing (1) the above outputs, (2) all R
code used, and (3) explanations for each part of your code.

## Homework 03-04: Real Case Study with Synthetic Data

This assignment is really more of a mini-project. As such, it is worth
2 homework assignment grades.

Your homework comes from my real life. I do some work as a freelancer,
including for a holding company that owns several smaller
manufacturing companies (often called "business units"). These
business units all have separate computer systems, so they all
generate reports of different formats. It's my job to parse these
different reports, aggregate the data, and show a dashboard that helps
executives make decisions.

Obviously I can't share their real data, but I've created some
[synthetic data](../hwk04-data.xlsx) that is somewhat similar (and
greatly simplified). That Excel file contains 5 sheets. The first 4
simulate output from each company, e.g., sheet "A" contains sales for
each day of 2022 for a business unit called "A". The last sheet,
"company_info", contains some info about each business unit.

Your job is to produce a report for executives of the holding
company. At a minimum, your report should contain:

1. A table showing total sales for each business unit per month. Rows
   should be months and columns should be business units. Thus you
   should have 5 columns: 1 for month, 4 for the business units.
2. An appropriate plot that summarizes the sales data. You decide
   which plot. There are multiple acceptable plots, but also some
   inappropriate ones.
3. A table **and** plot that summarizes performance of each business
   unit PER employee. The number of employees can be found in the
   "company_info" sheet.
   
Throughout this assignment, you may NOT hard-code any data. For
example, you cannot directly type in the number of employees for a
business unit. You must read it from the Excel file using R.

Write an R Markdown file containing (1) the items above, plus anything
additional you'd like to focus on, (2) all R code used, (3)
explanations for each part of your code, and (4) an executive summary
providing high-level details and summarization that an executive would
be interested in. The executive summary should come first.

After knitting, print out the document and hand it in on **Wednesday,
October 11, 9:00 AM**.

### Hints

This homework will require you to look up additional packages and functions.

- To read the excel file, look up the `realxl` package and the associated `real_xlsx` function.
- You will need to read in each business unit's sheet separately. For
  each, add a new column containing the business unit name (you'll
  need this when you combine them). There are lots of ways to add a
  new column with a constant value, including using `mutate`.
- You'll need to combine the data frames containing each business
  unit's data. One way to do this is with the `rbind` function.
- To integrate the number of employees for each business unit, you'll
  need to *join* some dataframes together.
- To extract the month from the "Date" column, you can use the
  `lubridate` package.
