SELECT state, sum(sales)
FROM public.orders
group by state
order by 2