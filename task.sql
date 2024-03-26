




CREATE PROCEDURE GetEvenNumbers()

BEGIN

    DECLARE x INT DEFAULT 2;
	DROP TABLE IF EXISTS nums;
    CREATE TABLE nums (x INT);

    WHILE x < 10 DO

    SET x = x + 2;
	INSERT INTO nums VALUES(x);
    END WHILE;

    SELECT * FROM nums;

END

	CALL GetEvenNumbers();