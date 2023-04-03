-- https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true&h_r=next-challenge&h_v=zen


select
ceil(
avg(salary) -
avg(convert(replace(convert(salary, char(10)),'0', ''), signed))) as ''
from employees
;

