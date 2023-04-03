-- https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true



select
    max(c.company_code) 
    , max(c.founder)
    , count(distinct e.lead_manager_code)
    , count(distinct e.senior_manager_code)
    , count(distinct e.manager_code)
    , count(distinct employee_code)
from employee e 
join company c
on e.company_code = c.company_code
group by c.company_code
order by c.company_code
;



