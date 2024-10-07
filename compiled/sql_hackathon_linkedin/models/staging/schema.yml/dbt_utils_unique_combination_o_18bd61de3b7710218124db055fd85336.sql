





with validation_errors as (

    select
        stats_id, stats_day
    from TIL_PORTFOLIO_PROJECTS.EH_SQL_HACKATHON.stg_linkedin__daily_post_stats
    group by stats_id, stats_day
    having count(*) > 1

)

select *
from validation_errors


