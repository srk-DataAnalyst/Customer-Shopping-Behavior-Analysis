select AVG(customer.purchase_amount) as avg_purchase_amount , customer.shipping_type from customer
where customer.shipping_type in ('Standard', 'Express')
group by customer.shipping_type