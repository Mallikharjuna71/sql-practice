select p.ProductName, p.ProductID, p.Price , c.CustomerID, o.Quantity
from Products p left join Orders o on p.ProductID = o.ProductID 
left join Customers c on o.CustomerID = c.CustomerID

where c.CustomerID = 3

select p.ProductName, p.ProductID, p.Price , c.CustomerID, o.Quantity
from Products p right join Orders o on p.ProductID = o.ProductID 
right join Customers c on o.CustomerID = c.CustomerID

where c.CustomerID = 3

select p.ProductName, p.ProductID, p.Price , c.CustomerID, o.Quantity
from Products p inner join Orders o on p.ProductID = o.ProductID 
inner join Customers c on o.CustomerID = c.CustomerID

where c.CustomerID = 3

select p.ProductName, p.ProductID, p.Price , c.CustomerID, o.Quantity
from Products p  join Orders o on p.ProductID = o.ProductID 
 join Customers c on o.CustomerID = c.CustomerID

where c.CustomerID = 3






select * from Products order by ProductID asc offset 2 rows fetch next 2 rows only;

select top 3 * from Products

select coalesce(Price, 10)as price from Products where ProductID=6
union all
select coalesce(Price, 10)as price from Products where ProductID=6

select * from actor where actor_id = (select actor_id from movie_cast where role = 'Annie Hall'



select * from Customers c left join Orders o on o.OrderDate = c.RegistrationDate

select * from Customers c left join Orders o on o.CustomerID = c.CustomerID
select * from Customers c right join Orders o on o.CustomerID = c.CustomerID


insert into Orders values(14, Null, null, Null, Null)
insert into Customers values(15, Null, null, Null, Null)


select * from orders