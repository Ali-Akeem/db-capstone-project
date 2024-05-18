DELIMITER $$
CREATE DEFINER=`admin1`@`%` PROCEDURE `CancelOrder`(id INT)
BEGIN
delete from orders where OrderID = id;
END$$
DELIMITER ;
