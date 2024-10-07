with source as (

    select * from SQL_HACKATHON.LINKEDIN.time_bound_follower_statistic

),

transformed as (

    select 

        _fivetran_id as stats_id,	
        day	as stats_day,
        follower_gains_organic_follower_gain as organic_follower_gain,	
        follower_gains_paid_follower_gain as paid_follower_gain,
        follower_gains_organic_follower_gain + follower_gains_paid_follower_gain as total_follower_gain,
        replace(organization_entity, 'urn:li:organization:', '') as org_id

    from source

)

select * from transformed