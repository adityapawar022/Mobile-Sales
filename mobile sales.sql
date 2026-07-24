SELECT * FROM mobile_sales.mobile_sales;

#Total revenue by brand
SELECT brand, SUM(total_sale_amount) AS total_revenue
FROM mobile_sales.mobile_sales
GROUP BY brand
ORDER BY total_revenue DESC;

#Top 5 mobile models by units sold
SELECT mobile_model, SUM(units_sold) AS total_units
FROM mobile_sales.mobile_sales
GROUP BY mobile_model
ORDER BY total_units DESC
LIMIT 5;

-- Average customer rating by payment method
SELECT payment_method, ROUND(AVG(customer_ratings),2) AS avg_rating
FROM mobile_sales.mobile_sales
GROUP BY payment_method;

-- Top 5 cities by revenue
SELECT city, SUM(total_sale_amount) AS revenue
FROM mobile_sales.mobile_sales
GROUP BY city
ORDER BY revenue DESC
LIMIT 5;

#Sales trend by year and preferred payment method
SELECT year, 
       payment_method,
       COUNT(*) AS total_orders,
       SUM(total_sale_amount) AS total_revenue
FROM mobile_sales.mobile_sales
GROUP BY year, payment_method
ORDER BY year, total_revenue DESC;

#Total sales revenue by brand
SELECT brand, 
       SUM(total_sale_amount) AS total_revenue,
       SUM(units_sold) AS total_units
FROM mobile_sales.mobile_sales
GROUP BY brand
ORDER BY total_revenue DESC;

#Sales trend by year and preferred payment method
SELECT year, 
       payment_method,
       COUNT(*) AS total_orders,
       SUM(total_sale_amount) AS total_revenue
FROM mobile_sales.mobile_sales
GROUP BY year, payment_method
ORDER BY year, total_revenue DESC;

