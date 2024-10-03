use ecommerce;

select * from ecommerce.INFORMATION_SCHEMA.TABLES;

select * from sales;

create view sales_view as (
	select s.userid, s.product_id, p.product_name from sales s inner join product p on s.product_id = p.product_id
	where s.product_id in (1, 2)
);

select * from sales_view;

with cte  as (
select userid, product_name from sales_view where product_id = 1
)

select userid from cte;
select product_name from cte;







CREATE TABLE cales (
    SaleID INT PRIMARY KEY IDENTITY(1,1),
    ProductID INT,
    UserID INT,
    SaleAmount DECIMAL(10, 2),
    SaleDate DATE
);
INSERT INTO cales (ProductID, UserID, SaleAmount, SaleDate)
VALUES
    (101, 1, 150.00, '2024-01-01'),
    (102, 2, 200.50, '2024-01-02'),
    (103, 1, 300.75, '2024-01-03'),
    (104, 3, 250.00, '2024-01-04'),
    (105, 4, 175.25, '2024-01-05'),
    (106, 2, 220.00, '2024-01-06'),
    (107, 1, 90.00, '2024-01-07'),
    (108, 5, 310.80, '2024-01-08'),
    (109, 3, 85.00, '2024-01-09'),
    (110, 4, 190.60, '2024-01-10'),
    (111, 1, 450.30, '2024-01-11'),
    (112, 2, 120.00, '2024-01-12'),
    (113, 5, 300.00, '2024-01-13'),
    (114, 3, 240.50, '2024-01-14'),
    (115, 4, 180.75, '2024-01-15'),
    (116, 1, 220.00, '2024-01-16'),
    (117, 2, 95.00, '2024-01-17'),
    (118, 5, 370.90, '2024-01-18'),
    (119, 3, 160.00, '2024-01-19'),
    (120, 4, 220.25, '2024-01-20');

select * from cales;

SELECT 
    ProductID, 
    SaleAmount,
    PERCENT_RANK() OVER (ORDER BY SaleAmount) AS percent_rank
FROM 
    cales;

use master;
create procedure sp1 @UserID int
as 
begin

select distinct SaleDate from cales where UserID = @UserID
end

exec sp1 @UserID = 1;

select * from cales;

select * from INFORMATION_SCHEMA.tables;

create procedure sp4 @UserID int, @Saledate date
as 
begin

select  SaleID, ProductID, UserID, SaleAmount from cales where UserID = @UserID and SaleDate = @SaleDate
end

exec sp4 @UserID = 1, @SaleDate = '2024-01-11';


with cte5 as (
select * from cales where UserID in (1, 2, 3)
)

select SaleID from cte5;
select UserID from cte5;
