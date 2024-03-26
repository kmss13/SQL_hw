CREATE FUNCTION getTime(seconds INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
 DECLARE days INT;
 DECLARE hours INT;
 DECLARE minutes INT;
 DECLARE result VARCHAR(100);
 
 SET days = FLOOR(seconds / (24 * 60 * 60));
 SET seconds = seconds % (24 * 60 * 60);
 SET hours = FLOOR(seconds / (60 * 60));
 SET seconds = seconds % (60 * 60);
 SET minutes = FLOOR(seconds / 60);
 SET seconds = seconds % 60;
 SET result = CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds, ' seconds');
RETURN result;
END;

SELECT getTime(12345);
