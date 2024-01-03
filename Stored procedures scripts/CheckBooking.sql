CREATE DEFINER=`lemon_capstone`@`%` PROCEDURE `CheckBooking`(IN slot DATETIME, IN tableno INT)
CASE
WHEN EXISTS (SELECT * FROM Bookings WHERE Bookings.BookingDate = slot AND Bookings.Table = tableno)
THEN SELECT CONCAT("Table ", tableno, " is already booked") AS BookingStatus;
ELSE
SELECT CONCAT("Table ", tableno, " is not booked") AS BookingStatus; 
END CASE