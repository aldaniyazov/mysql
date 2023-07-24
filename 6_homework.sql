DELIMITER $$

CREATE FUNCTION format_seconds(seconds INT)
RETURNS VARCHAR(100)
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE result VARCHAR(100);
    
    SET days = seconds DIV 86400;
    SET seconds = seconds MOD 86400;
    
    SET hours = seconds DIV 3600;
    SET seconds = seconds MOD 3600;
    
    SET minutes = seconds DIV 60;
    SET seconds = seconds MOD 60;
    
    SET result = CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds, ' seconds');
    RETURN result;
END $$

DELIMITER ;

-- Выведет '1 days 10 hours 17 minutes 36 seconds'
SELECT format_seconds(123456);

DELIMITER $$

CREATE PROCEDURE print_even_numbers()
BEGIN
    DECLARE i INT;
    SET i = 2;
    
    WHILE i <= 10 DO
        IF i % 2 = 0 THEN
            SELECT i;
        END IF;
        
        SET i = i + 1;
    END WHILE;
END $$

DELIMITER ;

-- Выведет: 2, 4, 6, 8, 10
CALL print_even_numbers();