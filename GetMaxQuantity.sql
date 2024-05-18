DELIMITER $$
CREATE DEFINER=`admin1`@`%` PROCEDURE `GetMaxQuantity`()
BEGIN
select MAX(Quantity) as 'Max Quantity in Order' from orders;
END$$
DELIMITER ;
