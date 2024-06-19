-- import cte
with 

recent_post as (

    select * from {{ ref('int_linkedin__recent_post') }}

),

posts as (

    select * from {{ ref('stg_linkedin__post_history') }}
    where author_type = 'organization'

),

content as (

    select * from {{ ref('stg_linkedin__post_content') }}

),

final as (

    select 

        recent_post.*,
        
        posts.post_text,

        content.stats_id,
        content.post_type,
        content.media_type,
        content.media_id,
        content.media_title
    
    from recent_post
    join posts on recent_post.post_id = posts.post_id and
        recent_post.recent_edit = posts.post_modified_time
    join content on recent_post.post_id = content.post_id

)

select * from final