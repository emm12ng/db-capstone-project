CREATE DEFINER=`lemon_capstone`@`%` PROCEDURE `GetMaxQuantity`()
SELECT MAX(Quantity) as 'Max Quantity'
FROM Orders