CREATE DEFINER=`lemon_capstone`@`%` PROCEDURE `CancelOrder`(IN orderID INT)
BEGIN
DELETE FROM Orders 
WHERE Orders.OrderID = orderID;
SELECT CONCAT("Order ", orderID, " is cancelled") AS Confirmation;
END