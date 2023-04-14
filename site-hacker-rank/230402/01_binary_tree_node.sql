-- https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true



select n, 
    case 
    when p is null then 'Root'
    when n in  (select p from bst ) then 'Inner'
    else 'Leaf'
    end ''
from bst
order by n
;

-- I did the following in MySQL and it worked out:
-- select n, case when p is NULL then 'Root' when n in (select distinct p from BST) 
-- then 'Inner' else 'Leaf' end as case1 from BST order by n;




