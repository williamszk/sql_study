-- https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true

-- 01/04/2023 I couldn't solve it, I was having problems with the sort
-- from the second select

(
    select  
    concat(name, '(', substring(occupation, 1,1), ')') as c_name
    from occupations
)
union
(
    select
    concat('There are a total of ',count(occupation), ' ', 
           lower(occupation) ,'s.')
    from occupations
    group by occupation
    order by count(occupation), occupation
)
order by c_name
;



