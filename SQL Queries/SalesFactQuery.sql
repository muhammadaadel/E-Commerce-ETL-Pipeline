SELECT  ol.order_id ,ol.book_id ,co.customer_id,
cast(co.order_date as date) as order_date, cast(co.order_date as time(0)) as order_time
,ol.price
from order_line ol join cust_order co
on ol.order_id = co.order_id