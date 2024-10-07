
    
    

select
    _fivetran_id as unique_field,
    count(*) as n_records

from SQL_HACKATHON.LINKEDIN.time_bound_share_statistic
where _fivetran_id is not null
group by _fivetran_id
having count(*) > 1


