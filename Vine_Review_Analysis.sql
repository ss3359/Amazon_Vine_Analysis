CREATE TABLE review_id_table (
  review_id TEXT PRIMARY KEY NOT NULL,
  customer_id INTEGER,
  product_id TEXT,
  product_parent INTEGER,
  review_date DATE -- this should be in the formate yyyy-mm-dd
);

Create table products_table(
    product_id text, 
    product_title text
); 

-- Customer table for first data set
CREATE TABLE customers_table (
  customer_id INT PRIMARY KEY NOT NULL UNIQUE,
  customer_count INT
);

-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);


select * 
into updated_vine_table
from vine_table
where (total_votes >= 50)
and (cast(helpful_votes as float)/cast(total_votes as float) >=0.5);  



select * into paid_vine_table 
from updated_vine_table 
where vine = 'Y'; 

select * into unpaid_vine_table 
from updated_vine_table 
where vine = 'N'; 

select count(review_id) as Total_Reivews into paid_vine_results from paid_vine_table; 
select count(review_id) as Total_Reivews into unpaid_vine_results from unpaid_vine_table; 

--Add columns to paid_vine_results table
alter table paid_vine_results
add three_star_reviews_total integer; 

alter table paid_vine_results
add percent_of_three_star_reviews float; 

select * from paid_vine_results; 
update paid_vine_results 
set three_star_reviews_total = (select count(paid_vine_table.review_id) from paid_vine_table where star_rating = '3'); 

update paid_vine_results 
set three_star_reviews_total = (select count(paid_vine_table.review_id) from paid_vine_table where star_rating = '3'); 

update paid_vine_results 
set percent_of_three_star_reviews = cast(three_star_reviews_total as float)/cast(total_reivews as float); 

select * from paid_vine_results; 

--Add columns to the unpaid_vine_results table
alter table unpaid_vine_results
add three_star_reviews_total integer;

alter table unpaid_vine_results
add percent_of_three_star_reviews float;

update unpaid_vine_results 
set three_star_reviews_total = (select count(unpaid_vine_table.review_id) from unpaid_vine_table where star_rating = '3'); 

update unpaid_vine_results 
set percent_of_three_star_reviews = cast(three_star_reviews_total as float)/cast(total_reivews as float); 


select * from paid_vine_results; 
select * from unpaid_vine_results;
select * from paid_vine_table; 
select * from unpaid_vine_table; 

drop table products_table; 