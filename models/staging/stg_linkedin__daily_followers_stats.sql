with source as (

    select * from {{ source('linkedin', 'time_bound_follower_statistic') }}

),

transformed as (

    select 

        _fivetran_id as stats_id,	
        day	as stats_day,
        follower_gains_organic_follower_gain as organic_follower_gain,	
        follower_gains_paid_follower_gain as paid_follower_gain,
        follower_gains_organic_follower_gain + follower_gains_paid_follower_gain as total_follower_gain,
        organization_entity as org_id

    from source

)

select * from transformed