CREATE DEFINER=`lemon_capstone`@`%` PROCEDURE `AddBooking`(customer_id INT, slot DATETIME, tableno INT)
BEGIN
INSERT INTO Bookings (CustomerID, BookingDate, Bookings.Table)
VALUES (customer_id, slot, tableno);
SELECT "Booking added" AS Confirmation;
END