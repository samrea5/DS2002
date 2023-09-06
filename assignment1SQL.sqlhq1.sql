-- ------------------------------------------------------------------
-- 0). First, How Many Rows are in the Products Table?
-- ------------------------------------------------------------------
select count(*) from products; 

-- ------------------------------------------------------------------
-- 1). Product Name and Unit/Quantity
-- ------------------------------------------------------------------
select product_name as "Product Name", quantity_per_unit as "Unit/Quantity" from products;

-- ------------------------------------------------------------------
-- 2). Product ID and Name of Current Products
-- ------------------------------------------------------------------
select id as "product ID", product_name as "Current Products" from products;

-- ------------------------------------------------------------------
-- 3). Product ID and Name of Discontinued Products
-- ------------------------------------------------------------------
select id as "product ID" , product_name as "name" , discontinued as "Discontinued" from products
where discontinued=1;

-- ------------------------------------------------------------------
-- 4). Name & List Price of Most & Least Expensive Products
-- ------------------------------------------------------------------
select product_name, list_price from products
order by list_price Desc;

-- ------------------------------------------------------------------
-- 5). Product ID, Name & List Price Costing Less Than $20
-- ------------------------------------------------------------------
select id, product_name as "product", list_price
 from products
 where list_price<20
 order by list_price Asc;

-- ------------------------------------------------------------------
-- 6). Product ID, Name & List Price Costing Between $15 and $20
-- ------------------------------------------------------------------
select id, product_name as "product", list_price
 from products
 where list_price<20 and list_price>15
 order by list_price Asc;


-- ------------------------------------------------------------------
-- 7). Product Name & List Price Costing Above Average List Price
-- ------------------------------------------------------------------
select product_name as "product", list_price
from products
 where list_price>(select avg(list_price) from products)
 order by list_price desc;
-- ------------------------------------------------------------------
-- 8). Product Name & List Price of 10 Most Expensive Products 
-- ------------------------------------------------------------------
select  product_name as "product", list_price
 from products
 order by list_price desc
 limit 10;

-- ------------------------------------------------------------------ 
-- 9). Count of Current and Discontinued Products 
-- ------------------------------------------------------------------
select count(quantity_per_unit) as "Count of Current Products", count(discontinued) as "Count of Discontinued Products"  from products;

-- ------------------------------------------------------------------
-- 10). Product Name, Units on Order and Units in Stock
--      Where Quantity In-Stock is Less Than the Quantity On-Order. 
-- ------------------------------------------------------------------
select product_name, reorder_level as "Units in stock", target_level as "On Order" from products
where reorder_level < target_level;


-- ------------------------------------------------------------------
-- EXTRA CREDIT -----------------------------------------------------
-- ------------------------------------------------------------------


-- ------------------------------------------------------------------
-- 11). Products with Supplier Company & Address Info
-- ------------------------------------------------------------------
select products.product_name, suppliers.company, suppliers.address
from products, suppliers
where products.supplier_ids=suppliers.id;


-- ------------------------------------------------------------------
-- 12). Number of Products per Category With Less Than 5 Units
-- ------------------------------------------------------------------
select count(id) as "Count" , category from products
group by category
having count(id)<5;


-- ------------------------------------------------------------------
-- 13). Number of Products per Category Priced Less Than $20.00
-- ------------------------------------------------------------------
select count(*), category from products
where list_price<20
group by category;



