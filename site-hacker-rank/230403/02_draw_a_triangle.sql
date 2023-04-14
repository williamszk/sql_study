-- https://www.hackerrank.com/challenges/draw-the-triangle-1/problem?isFullScreen=true&h_r=next-challenge&h_v=zen

-- service start mysql
-- mysql

-- ================================================================================
-- https://www.hackerrank.com/challenges/draw-the-triangle-1/forum/comments/1266251
DELIMITER $$

CREATE PROCEDURE P (IN R INT)
BEGIN
    DECLARE R1 INT;
    DECLARE q_str VARCHAR(1500);
    SET R1 = R;
    SET q_str = 'SELECT ';
    WHILE 1 < R1 DO
        SET q_str = Concat(q_str, 'REPEAT(\'* \', ', R1, ') UNION SELECT ');
        SET R1 = R1 - 1;
    END WHILE;
    SET q_str = Concat(q_str, '\'*\';');
    SET @query = q_str;
    PREPARE myquery FROM @query;
    EXECUTE myquery;
    DEALLOCATE PREPARE myquery;
END$$

DELIMITER ;

CALL P(20);

-- https://stackoverflow.com/questions/15142/what-are-the-pros-and-cons-to-keeping-sql-in-stored-procs-versus-code#15153
-- https://stackoverflow.com/a/15153/8782077

-- ================================================================================





