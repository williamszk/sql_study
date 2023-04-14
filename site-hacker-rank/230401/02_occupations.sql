-- https://www.hackerrank.com/challenges/occupations/problem?isFullScreen=true&h_r=next-challenge&h_v=zen

-- https://linuxhint.com/mysql_pivot/


NULL Priyanka NULL NULL
NULL NULL NULL Samantha
Priya NULL NULL NULL
NULL NULL Kristeen NULL


select 
    max(case when occupation='Doctor' then name end) 'Doctor',
    max(case when occupation='Professor' then name end) 'Professor',
    max(case when occupation='Singer' then name  end) 'Singer',
    max(case when occupation='Actor' then name end) 'Actor'
from (
    select *, row_number() over (
        partition by occupation order by name
    ) rn
    from occupations
) t
group by rn;
