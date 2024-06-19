with 

stats as (

    select * from {{ ref('int_linkedin__post_daily_performance') }}

),

org as (

    select * from {{ ref('stg_linkedin__org') }}

),

final as (

    select 

        org.org_name,

        stats.stats_date,
        sum(stats.click_count) as clicks,
        sum(stats.comment_count) as comments,
        sum(stats.impression_count) as impressions,
        sum(stats.like_count) as likes,
        sum(stats.share_count) as shares,
        sum(stats.total_follower_gain) as new_followers

    from stats
    join org on stats.org_id = org.org_id

    group by org.org_name, stats.stats_date
    order by stats.stats_date asc

)

select * from final