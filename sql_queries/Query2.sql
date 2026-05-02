select customer.customer_id , customer.purchase_amount from customer
where customer.discount_applied = 'Yes' and customer.purchase_amount > ( select AVG(customer.purchase_amount) from customer)