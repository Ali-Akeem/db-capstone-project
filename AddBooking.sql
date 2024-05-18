DELIMITER $$
CREATE DEFINER=`admin1`@`%` PROCEDURE `AddBooking`(booking_id INT, booking_date DATE, tableno INT, customer_id INT, staff_id INT)
BEGIN
insert into booking(BookingID, Date, TableNumber, CustomerID, StaffID)
values(booking_id, booking_date, tableno, customer_id, staff_id);
select 'New booking added' as 'Confirmation';
END$$
DELIMITER ;
