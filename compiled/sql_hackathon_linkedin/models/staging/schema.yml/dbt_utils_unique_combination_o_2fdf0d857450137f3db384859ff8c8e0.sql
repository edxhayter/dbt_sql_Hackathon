





with validation_errors as (

    select
        stats_id, post_id
    from TIL_PORTFOLIO_PROJECTS.EH_SQL_HACKATHON.stg_linkedin__post_content
    group by stats_id, post_id
    having count(*) > 1

)

select *
from validation_errors


