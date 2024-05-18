DELIMITER $$
CREATE DEFINER=`admin1`@`%` PROCEDURE `CheckBooking`(BookDate DATE, TableNo INT)
BEGIN
select CONCAT("Table ", TableNumber, " is already booked") as 'Booking Status'
from booking 
where Date = BookDate and TableNumber = TableNo;
END$$
DELIMITER ;
