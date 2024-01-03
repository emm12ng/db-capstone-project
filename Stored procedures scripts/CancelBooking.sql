CREATE DEFINER=`lemon_capstone`@`%` PROCEDURE `CancelBooking`(booking_id INT)
BEGIN
DELETE FROM Bookings
WHERE BookingID = booking_id;
SELECT "Booking canceled" AS Confirmation;
END