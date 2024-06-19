# sql Hackathon - Linkedin Challenge

## Brief

### Key Asks

- Analyze the performance of various types of LinkedIn content.
- Understand the engagement metrics across different posts
- Enhance content personalization and scheduling to maximize user interaction

### Key Metrics and Dimensions:

- Post id, title, contents, publish date
- Information Lab Page (Data School, TIL US, TIL)
- Engagement Metrics: Click Count, Comment Count, Impression Count, Like Count, Share Count

Additional Data (time_bound tables):
- Daily Follow and engagement metrics by Information Lab Pages

### Output

- Series of 'mart' tables for an analyst to deliver insights on Linkedin data.

## Plan

- Assess the source files and in the sources.yml document information on the tables
- Scope how the final tables will look (add a schema.yml file to describe the final tables)
- Build Models incrementally (stage, intermediary, mart) to produce final tables
- Review and consider any additional processes that can be added to the project (macros, tests and seeds)
- Commit the project to the snowflake environment along with generating the dbt docs to accompany the project