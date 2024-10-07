
    
    

select
    org_id as unique_field,
    count(*) as n_records

from TIL_PORTFOLIO_PROJECTS.EH_SQL_HACKATHON.stg_linkedin__org
where org_id is not null
group by org_id
having count(*) > 1


