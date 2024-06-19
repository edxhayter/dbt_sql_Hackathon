with source as(

        select * from {{ source('linkedin', 'organization_ugc_post') }}

),
transformed as (

    select

        organization_id as org_id,
        replace(ugc_post_id, 'urn:li:ugcPost:', '') as post_id
    
    from source

)

select * from transformed