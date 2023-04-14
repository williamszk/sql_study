
service mysql start
service mysql status  
mysql

CREATE DATABASE toptal_examples;
USE toptal_examples;

create table user(
    user_id int primary key,
    username varchar(100)
);

create table training_details (
    user_training_id int primary key,
    user_id int, 
    foreign key (user_id) references user(user_id),
    training_id int,
    training_date date
);

insert into user(user_id, username) values
    (1 ,'John Doe'),
    (2 ,'Jane Don'),
    (3 ,'Alice Jones'),
    (4 ,'Lisa Romer');

select * from user;

insert into training_details(
    user_training_id, 
    user_id,
    training_id,
    training_date
    ) values
    (1 , 1, 1, "2015-08-02"),
    (2 , 2, 1, "2015-08-03"),
    (3 , 3, 2, "2015-08-02"),
    (4 , 4, 2, "2015-08-04"),
    (5 , 2, 2, "2015-08-03"),
    (6 , 1, 1, "2015-08-02"),
    (7 , 3, 2, "2015-08-04"),
    (8 , 4, 3, "2015-08-03"),
    (9 , 1, 4, "2015-08-03"),
    (10, 3, 1, "2015-08-02"),
    (11, 4, 2, "2015-08-04"),
    (12, 3, 2, "2015-08-02"),
    (13, 1, 1, "2015-08-02"),
    (14, 4, 3, "2015-08-03");

select * from training_details;

-- Write a query to to get the list of users who took the a training lesson 
-- more than once in the same day, grouped by user and training lesson, 
-- each ordered from the most recent lesson date to oldest date.

select user_id, training_id,training_date
from training_details
group by user_id, training_id, training_date
having count(user_id) > 1
order by training_date desc
;

-- +---------+-------------+---------------+
-- | user_id | training_id | training_date |
-- +---------+-------------+---------------+
-- |       4 |           2 | 2015-08-04    |
-- |       4 |           3 | 2015-08-03    |
-- |       1 |           1 | 2015-08-02    |
-- |       3 |           2 | 2015-08-02    |
-- +---------+-------------+---------------+
-- 4 rows in set (0.00 sec)

select 
    t.user_id, 
    u.username,
    t.training_id,
    t.training_date,
    count(t.user_id) count
from training_details t
left join user u
on t.user_id = u.user_id
group by t.user_id, training_id, training_date
having count(t.user_id) > 1
order by t.training_date desc
;


explain 
select 
    t.user_id, 
    u.username,
    t.training_id,
    t.training_date,
    count(t.user_id) count
from training_details t
left join user u
on t.user_id = u.user_id
group by t.user_id, training_id, training_date
having count(t.user_id) > 1
order by t.training_date desc
;



