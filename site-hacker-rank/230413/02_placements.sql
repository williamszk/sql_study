-- https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true&h_r=next-challenge&h_v=zen


select 
    s.id 
    , s.name
    , p.salary salary
    , f.friend_id friend_id
    , p2.salary friend_salary
from students s
left join packages p
on s.id = p.id
left join friends f
on s.id = f.id
left join packages p2
on f.friend_id = p2.id
;

select 
    s.id 
    , s.name
    , p.salary salary
    , f.friend_id friend_id
    , p2.salary friend_salary
from students s
left join packages p
on s.id = p.id
left join friends f
on s.id = f.id
left join packages p2
on f.friend_id = p2.id
where p.salary < p2.salary
order by p2.salary
;

select 
    s.name
from students s
left join packages p
on s.id = p.id
left join friends f
on s.id = f.id
left join packages p2
on f.friend_id = p2.id
where p.salary < p2.salary
order by p2.salary
;