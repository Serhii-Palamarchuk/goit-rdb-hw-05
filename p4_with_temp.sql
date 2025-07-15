-- 4. Те саме, що й у п.3, але з WITH-блоком
WITH temp AS (
    SELECT * 
    FROM order_details
    WHERE quantity > 10
)
SELECT 
    temp.order_id,
    AVG(temp.quantity) AS avg_quantity
FROM temp
GROUP BY temp.order_id;
