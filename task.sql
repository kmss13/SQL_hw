CREATE PROCEDURE GetEvenNumbers()
BEGIN
    DECLARE x INT DEFAULT 0;
    DROP TABLE IF EXISTS nums;
    CREATE TEMPORARY TABLE nums (x INT);
	WHILE x < 10 DO
		SET x = x + 2;
		INSERT INTO nums VALUES(x);
	END WHILE;
    SELECT * FROM nums;
END;

call GetEvenNumbers();
