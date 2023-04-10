SELECT 
sub_category 
, product_name
, sum(profit)
FROM orders o
group by product_name, sub_category 
order by 1,2
