with source as (

        select * from {{ source('linkedin', 'post_content') }}

),

transformed as (

    select
    
        post_id as post_id,
        type as media_type,
        media_id,
        media_title
    
    from source

)

select * from transformed