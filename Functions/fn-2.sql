CREATE FUNCTION days_overdue(project_id INT) RETURNS INT
    DETERMINISTIC
    READS SQL DATA
    BEGIN
        DECLARE days_over INT;
        SELECT DATEDIFF(CURDATE(), deadline) INTO days_over
        FROM projects
        WHERE id = project_id AND deadline < CURDATE();
        RETURN days_over;
    END