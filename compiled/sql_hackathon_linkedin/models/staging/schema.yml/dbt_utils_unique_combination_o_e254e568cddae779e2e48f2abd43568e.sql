





with validation_errors as (

    select
        post_id, share_statistic_id
    from TIL_PORTFOLIO_PROJECTS.EH_SQL_HACKATHON.stg_linkedin__post_shares
    group by post_id, share_statistic_id
    having count(*) > 1

)

select *
from validation_errors


