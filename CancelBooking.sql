DELIMITER $$
CREATE DEFINER=`admin1`@`%` PROCEDURE `CancelBooking`(booking_id INT)
BEGIN
delete from booking where BookingID = booking_id;
select concat('Booking ', booking_Id, ' cancelled') as 'Confirmation';
END$$
DELIMITER ;
