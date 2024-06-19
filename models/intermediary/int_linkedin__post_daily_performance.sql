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
        
        stats.*
    
    from stats

)

select * from final