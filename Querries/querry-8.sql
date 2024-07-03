SELECT e.name
    FROM Employees e
    LEFT JOIN projectTeam pt ON e.id = pt.employee_id AND pt.is_lead = TRUE
    WHERE pt.employee_id IS NULL;