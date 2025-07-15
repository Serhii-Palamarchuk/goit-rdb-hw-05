-- 2. Показати всі рядки з order_details, де відповідний order має shipper_id = 3
SELECT *
FROM order_details od
WHERE od.order_id IN (
    SELECT o.id
    FROM orders o
    WHERE o.shipper_id = 3
);