DELIMITER $$
CREATE DEFINER=`admin1`@`%` PROCEDURE `UpdateBooking`(booking_id INT, booking_date DATE)
BEGIN
update booking
set Date = booking_date
where BookingID = booking_id;
select CONCAT('Booking ', booking_id, ' updated') as 'Confirmation';
END$$
DELIMITER ;
