
-- https://www.toptal.com/sql/interview-questions
-- 6

create table test_a(id numeric);

create table test_b(id numeric);

insert into test_a(id) values
  (10),
  (20),
  (30),
  (40),
  (50);

insert into test_b(id) values
  (10),
  (30),
  (50);

-- Write a query to fetch values in table test_a that are and not in test_b 
-- without using the NOT keyword.

select a.id a_id, b.id b_id
from test_a a left join test_b b
on a.id=b.id
;

-- https://learnsql.com/blog/what-is-common-table-expression/

with cte_1 as (
    select a.id a_id, b.id b_id
    from test_a a left join test_b b
    on a.id=b.id
)
select a_id
from cte_1
where b_id is null;

-- ---------------------------------------------
-- A much simpler way to do this
select a.id
from test_a a
left join test_b b on a.id = b.id
where b.id is null
;






