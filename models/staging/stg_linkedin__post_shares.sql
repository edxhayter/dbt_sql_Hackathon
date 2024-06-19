with source as (

    select * from {{ source('linkedin', 'ugc_post_share_statistic') }}

),

transformed as (

    select 

        share_statistic_id as stats_id,
        ugc_post_id as post_id
    
    from source
)

select * from transformed