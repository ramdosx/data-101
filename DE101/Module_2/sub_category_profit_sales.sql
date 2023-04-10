SELECT  category
, sub_category 
, sum(sales)
, sum(profit)
FROM orders o
group by category, sub_category 
order by 1,2
