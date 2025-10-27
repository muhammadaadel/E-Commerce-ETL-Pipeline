SELECT ca.customer_id, ca.address_id ,  addstatus.address_status , addstatus.status_id
FROM   customer_address ca INNER JOIN
customer c ON ca.customer_id = c.customer_id INNER JOIN
address a ON ca.address_id = a.address_id
inner join address_status addstatus on addstatus.status_id = ca.status_id