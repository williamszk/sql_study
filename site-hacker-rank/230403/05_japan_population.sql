
-- https://www.hackerrank.com/challenges/japan-population/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

select
sum(population)
from city
where countrycode='JPN'
;