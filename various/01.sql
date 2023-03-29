-- https://www.toptal.com/sql/interview-questions

-- 41. Considering the database schema displayed in the SQLServer-style diagram below, 
-- write a SQL query to return a list of all the invoices. For each invoice, show 
-- the Invoice ID, the billing date, the customer’s name, and the name of the 
-- customer who referred that customer (if any). The list should be ordered by billing date.

select
i.id, i.billingDate, c.name, r.name as ReferredByName
from  invoices i 
join customers c
on i.CustomerId = c.id
left join customers r on c.referredBy=r.id
order by i.billingDate;

