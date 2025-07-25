-- 1. Показати order_details.* + customer_id з таблиці orders
SELECT 
    od.*, 
    (SELECT o.customer_id 
     FROM orders o 
     WHERE o.id = od.order_id) AS customer_id
FROM order_details od;