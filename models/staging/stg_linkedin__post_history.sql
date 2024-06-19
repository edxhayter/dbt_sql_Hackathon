with source as (

    select * from {{ source('linkedin', 'ugc_post_history') }}

),

transformed as (

    select 
        id as post_id,
        last_modified_time as post_modified_date,
        author as post_author,	
        commentary	as post_text,
        created_time as post_created_date,
        first_published_at as initial_publish_date

    from source

    where 
        visibility = 'PUBLIC' and
        distribution_feed_distribution = 'MAIN_FEED'

)

select * from transformed