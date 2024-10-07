with source as (

        select * from SQL_HACKATHON.LINKEDIN.post_content

),

transformed as (

    select
    
        _fivetran_id as stats_id,
        replace(post_id, 'urn:li:ugcPost:', '') as post_id,
        type as post_type,
        case 
            when contains(media_id, 'document') then 'document:'
            when contains(media_id, 'video') then 'video:'
            when contains(media_id, 'image') then 'image:'
            else null
        end as media_type,
        replace(media_id, case 
            when contains(media_id, 'document') then 'urn:li:document:'
            when contains(media_id, 'video') then 'urn:li:video:'
            when contains(media_id, 'image') then 'urn:li:image:'
            end
            , '') as media_id,
        media_title
    
    from source

)

select * from transformed