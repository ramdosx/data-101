SELECT  concat(date_part('year',order_date),'-', to_char(date_part('month',order_date),'00')) as y_mon
, sum(o.profit) profit
FROM orders o
group by y_mon
order by y_mon