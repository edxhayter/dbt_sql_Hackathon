with source as (

    select * from SQL_HACKATHON.LINKEDIN.ugc_post_history

),

transformed as (

    select 
        replace(id, 'urn:li:ugcPost:', '') as post_id,
        last_modified_time as post_modified_time,
        SPLIT_PART(replace(author, 'urn:li:', ''), ':', 1) as author_type,
        SPLIT_PART(replace(author, 'urn:li:', ''), ':', 2) as author_id,
        commentary	as post_text,
        created_time as post_created_date,
        first_published_at as initial_publish_date

    from source

    where 
        visibility = 'PUBLIC' and
        distribution_feed_distribution = 'MAIN_FEED'

)

select * from transformed