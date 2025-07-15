-- 3. Отримати середнє quantity з order_details, де quantity > 10, згрупувати за order_id
SELECT 
    filtered.order_id,
    AVG(filtered.quantity) AS avg_quantity
FROM (
    SELECT * 
    FROM order_details
    WHERE quantity > 10
) AS filtered
GROUP BY filtered.order_id;
