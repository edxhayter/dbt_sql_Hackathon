{% docs __overview__ %}

![alt text](<assets/The Information Lab - Transparent.png>)

# TIL SQL Hackathon

## Using dbt to offer Social Media Insights

### Link to [Github](https://github.com/edxhayter/dbt_sql_Hackathon)

I was provided with a sample of the company's Linkedin data from Fivetran landed in a Snowflake instance along with a few questions that the marketing team would like to use the data to potentially answer.

### Data Analysts

For information on datamart tables ready for analysis please navigate to `models/marts/` and select the department you are reporting for.

### Analytics Engineers

For documentation of the source data as it was landed in Snowflake consult the Sources Section and select the Linkedin Source. For documentation on the models of any layer (staging/intermediate/mart), check the `sql_hackathon_linkedin` directory and navigate to the appropriate layer.

### Documentation Expectations

The expectation for this project is to log a description for each field. Doc Block Markdowns should be created in the location a field is first encountered in the project and then any future occurences should refer to the doc block to maintain central control.

Model descriptions should bet structured to state the inputs used, the scope of the model and any notes on particular actions that are applied to the data.

### SQL Linting

Althought the project did not use a linter in an enterprise setting it might make sense to add a link to the linting configuration here so that it is easily accessible for developers.

{% enddocs %}
