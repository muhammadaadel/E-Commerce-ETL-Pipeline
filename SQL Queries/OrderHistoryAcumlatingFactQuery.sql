SELECT oh.order_id,sm.method_id, sm.cost,co.customer_id ,
min(Case WHEN status_id = 1 THEN Cast(status_date as date) END) as Date_Order_Received,
min(Case WHEN status_id = 1 THEN Cast(status_date as time(0))END) as Time_Order_Received,
min(Case WHEN status_id = 2 THEN Cast(status_date as date)END) as Date_Pending_Delivery,
min(Case WHEN status_id = 2 THEN Cast(status_date as time(0))END) as Time_Pending_Delivery,
min(Case WHEN status_id = 3 THEN Cast(status_date as date)END) as Date_Delivery_In_Progress,
min(Case WHEN status_id = 3 THEN Cast(status_date as time(0))END) as Time_Delivery_In_Progress,
min(Case WHEN status_id = 4 THEN Cast(status_date as date)END) as Date_Order_Delivered,
min(Case WHEN status_id = 4 THEN Cast(status_date as time(0))END) as Time_Order_Delivered,
min(Case WHEN status_id = 5 THEN Cast(status_date as date)END) as Date_Order_Cancelled,
min(Case WHEN status_id = 5 THEN Cast(status_date as time(0))END) as Time_Order_Cancelled,
min(Case WHEN status_id = 6 THEN Cast(status_date as date)END) as Date_Order_Returned,
min(Case WHEN status_id = 6 THEN Cast(status_date as time(0))END) as Time_Order_Returned
FROM order_history as oh LEFT JOIN cust_order co on oh.order_id = co.order_id
LEFT JOIN shipping_method sm on co.shipping_method_id = sm.method_id
group by oh.order_id , sm.method_id, sm.cost,co.customer_id 