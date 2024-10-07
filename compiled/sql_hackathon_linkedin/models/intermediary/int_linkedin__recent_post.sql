-- import ctes
with 

posts as (

    select * from TIL_PORTFOLIO_PROJECTS.EH_SQL_HACKATHON.stg_linkedin__post_history
    where author_type = 'organization'

),

final as (

    select 
        
        posts.post_id,
        max(posts.post_modified_time) as recent_edit,
        count(posts.post_modified_time) as num_edits,
        posts.post_created_date,
        posts.initial_publish_date
    
    from posts

    group by posts.post_id, posts.post_created_date, posts.initial_publish_date

)

select * from final