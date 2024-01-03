CREATE DEFINER=`lemon_capstone`@`%` PROCEDURE `UpdateBooking`(booking_id INT, slot DATETIME)
BEGIN
UPDATE Bookings
SET BookingDate = slot
WHERE BookingID = booking_id;
SELECT "Booking updated" AS Confirmation;
END