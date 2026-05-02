SELECT top 5 item_purchased,
       ROUND(100.0 * SUM(CASE WHEN customer.discount_applied = 'Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS discount_rate
FROM customer
GROUP BY customer.item_purchased
ORDER BY discount_rate DESC