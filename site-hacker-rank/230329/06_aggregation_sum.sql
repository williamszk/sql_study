-- https://www.hackerrank.com/challenges/revising-aggregations-sum/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

select
sum(population)
from city 
where district='California'
group by district;
