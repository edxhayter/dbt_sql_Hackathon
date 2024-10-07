with source as (

    select * from SQL_HACKATHON.LINKEDIN.ugc_post_share_statistic

),

transformed as (

    select 

        share_statistic_id as share_statistic_id,
        ugc_post_id as post_id
    
    from source
)

select * from transformed