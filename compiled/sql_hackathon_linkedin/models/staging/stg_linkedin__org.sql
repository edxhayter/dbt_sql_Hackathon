with source as (

    select * from SQL_HACKATHON.LINKEDIN.organization 

),

transformed as (

    select
    
        id as org_id,
        founded_on_year as founded_year,
        localized_description as org_desc,
        localized_name as org_name,
        localized_website as org_website
    
    from source

)

select * from transformed