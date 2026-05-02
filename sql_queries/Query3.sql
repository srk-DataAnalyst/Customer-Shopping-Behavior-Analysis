select top 5 
		customer.item_purchased ,
		ROUND(AVG(customer.review_rating),2) as "average_product_rating "
from customer

group by customer.item_purchased
order by AVG(customer.review_rating) desc