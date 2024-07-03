CREATE VIEW overdue_projects AS
    SELECT id, name, requirements, deadline,
           DATEDIFF(CURDATE(), deadline) AS days_overdue
    FROM projects
    WHERE deadline < CURDATE();