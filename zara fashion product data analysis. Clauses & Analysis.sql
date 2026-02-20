create database zara_fashion_products;
use zara_fashion_products;
select * from zara_clothes;

-- 1. Calculate the average price of products for each section.

select section, avg(price)
from zara_clothes
group by section;


-- 2.  Retrieve all products where Promotion is 'Yes'.

select *
from zara_clothes
where Promotion = 'Yes';


-- 3.  Find the top 3 products with the highest Sales Volume within each section.

select name,section, max(sales_volume)
from zara_clothes
group by name, section
limit 3;


-- 4.  Display all distinct values from the Product Category column.
 
 select distinct product_category
 from zara_clothes;
 
 
-- 5. Count the number of products available in each Product Position.

select product_position, count(*) as no_of_products
from zara_clothes
group by product_position;


-- 6. Identify products whose price is greater than the average price of their respective Product Category.

select * 
from zara_clothes as  z
where price > (Select avg(price) from zara_clothes where 'product_category' = 'product_category');


-- 7. Show the name, price, and currency of all products.

select name, price, currency
from zara_clothes;


-- 8. Rank products within each section based on Sales Volume using a window function.

 
 
-- 9. Find the total Sales Volume for seasonal vs non-seasonal products.

select seasonal, sum(sales_volume) as total_sales
from zara_clothes
group by seasonal;


-- 10. Count the total number of records in the table.

select count(*) as total_records
from zara_clothes;


-- 11. List all products priced above 100, ordered by price descending.

select *
from zara_clothes
where price > 100
order by price desc;


-- 12. Retrieve all products belonging to the 'MAN' section.

select *
from zara_clothes
where section = 'Man';


-- 13. Show the minimum and maximum price for each Product Category.

select product_category, max(price) as max_price, min(price) as min_price
from zara_clothes
group by product_category;
 
 
 
 -- Thankyou:)


