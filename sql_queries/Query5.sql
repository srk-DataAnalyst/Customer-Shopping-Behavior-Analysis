select customer.subscription_status ,
		COUNT(customer.customer_id) as total_customers,
		AVG(customer.purchase_amount) as avg_spend,
		SUM(customer.purchase_amount) as total_revenue
		from customer
group by customer.subscription_status
order by total_revenue ,avg_spend