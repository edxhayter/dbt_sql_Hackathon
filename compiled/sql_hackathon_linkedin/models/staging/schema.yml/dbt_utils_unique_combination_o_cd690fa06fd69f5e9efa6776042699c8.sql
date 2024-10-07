





with validation_errors as (

    select
        post_id, post_modified_time
    from TIL_PORTFOLIO_PROJECTS.EH_SQL_HACKATHON.stg_linkedin__post_history
    group by post_id, post_modified_time
    having count(*) > 1

)

select *
from validation_errors


