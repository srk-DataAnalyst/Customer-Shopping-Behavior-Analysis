with customer_type as (
SELECT customer.customer_id, customer.previous_purchases,
CASE 
    WHEN customer.previous_purchases = 1 THEN 'New'
    WHEN customer.previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
    ELSE 'Loyal'
    END AS customer_segment
FROM customer)

select customer_segment,count(*) AS "Number of Customers" 
from customer_type 
group by customer_segment;