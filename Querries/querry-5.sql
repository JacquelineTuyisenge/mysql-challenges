SELECT COUNT(*) 
    FROM projectTeam pt
    JOIN Employees e ON pt.employee_id = e.id
    WHERE e.name = 'David Lee';