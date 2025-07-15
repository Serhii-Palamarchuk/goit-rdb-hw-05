-- 5.2. Використання функції divide_values
SELECT 
    id,
    order_id,
    product_id,
    quantity,
    divide_values(quantity, 2.5) AS divided_quantity
FROM order_details;
