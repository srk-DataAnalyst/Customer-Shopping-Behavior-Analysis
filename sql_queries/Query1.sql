select sum(customer.purchase_amount) as Revenue , customer.gender from customer
group by customer.gender 