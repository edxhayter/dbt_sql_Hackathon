





with validation_errors as (

    select
        org_id, post_id
    from TIL_PORTFOLIO_PROJECTS.EH_SQL_HACKATHON.stg_linkedin__org_posts
    group by org_id, post_id
    having count(*) > 1

)

select *
from validation_errors


