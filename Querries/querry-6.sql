SELECT p.name, COUNT(pt.employee_id) AS total_employees
    FROM projects p
    JOIN projectTeam pt ON p.id = pt.project_id
    GROUP BY p.id;