select customer.CustomerID, customer.Name, orders.OrderID, orders.TotalCost, menu.Name, menuitems.Courses,
menuitems.Starters
from customer INNER JOIN orders USING(CustomerID)
INNER JOIN menu USING(MenuID)
INNER JOIN menuitems USING(MenuItemsID)
where TotalCost > 150
order by TotalCost;

select Name 
from menu
where MenuID = ANY (select MenuID from orders where Quantity > 2);