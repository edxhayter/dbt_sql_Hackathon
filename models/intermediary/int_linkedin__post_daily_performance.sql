-- import tables

with 

followers as (

    select * from {{ ref('stg_linkedin__daily_followers_stats') }}

),

stats as (

    select * from {{ ref('stg_linkedin__daily_post_stats') }}

),

final as (

    select 
        
        stats.stats_id,
        stats.org_id,
        cast(stats.stats_day as date) as stats_date,
        stats.engagement,
        stats.unique_impressions_count,
        stats.share_count,
        stats.click_count,
        stats.like_count,
        stats.impression_count,
        stats.comment_count,
        
        followers.organic_follower_gain,
        followers.paid_follower_gain,
        followers.total_follower_gain

    from stats
    join followers on stats.stats_id = followers.stats_id and
        stats.stats_day = followers.stats_day

)

select * from final