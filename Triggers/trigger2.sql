CREATE TRIGGER validate_team_lead
    BEFORE INSERT ON projectTeam
    FOR EACH ROW
    BEGIN
        DECLARE emp_count INT;
        SELECT COUNT(*)
        INTO emp_count
        FROM Employees
        WHERE id = NEW.employee_id;
        IF emp_count = 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid team lead: Employee does not exist';
        END IF;
    END 