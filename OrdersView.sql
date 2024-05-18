CREATE ALGORITHM=UNDEFINED DEFINER=`admin1`@`%` 
SQL SECURITY DEFINER VIEW `littlelemondb`.`ordersview` AS 
select `littlelemondb`.`orders`.`OrderID` AS `OrderID`,`littlelemondb`.`orders`.`Quantity` AS `Quantity`,
`littlelemondb`.`orders`.`TotalCost` AS `TotalCost` 
from `littlelemondb`.`orders` where (`littlelemondb`.`orders`.`Quantity` > 2);
