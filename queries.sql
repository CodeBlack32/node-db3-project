-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select productname, categoryname
from product join category 
where product.CategoryId = category.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select o.Id, s.CompanyName, o.OrderDate
from [Order] as o
    join Shipper as s 
where o.OrderDate<"2012-08-09 00:00:00"
group by o.id

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT p.ProductName as name, od.Quantity as quantity
FROM Product as p
    join [OrderDetail] as od
    on od.ProductId = p.Id
where od.OrderId = '10251'

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

select od.OrderID, c.CompanyName, e.LastName, o.EmployeeId
from OrderDetail as od
    join Customer as c    , Employee as e, [Order] as o
on o.EmployeeId = e.Id
??