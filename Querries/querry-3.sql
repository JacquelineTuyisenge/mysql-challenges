-- Find the team lead for the "Mobile App for Learning" project.

SELECT e.name 
    FROM projectTeam pt
    JOIN projects p ON pt.project_id = p.id
    JOIN Employees e ON pt.employee_id = e.id
    WHERE p.name = 'Mobile App for Learning' AND pt.is_lead = TRUE;