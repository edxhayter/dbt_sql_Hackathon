with source as (

    select * from SQL_HACKATHON.LINKEDIN.time_bound_share_statistic

),

transformed as (

    select

        _fivetran_id as stats_id,
        day as stats_day,
        engagement,
        unique_impressions_count,
        share_count,
        click_count,
        like_count,
        impression_count,
        comment_count,
        replace(organization_entity, 'urn:li:organization:', '') as org_id

    from source

)

select * from transformed