CREATE VIEW employee_project_count AS
   SELECT e.name, COUNT(pt.project_id) AS total_projects
   FROM Employees e
   JOIN projectTeam pt ON e.id = pt.employee_id
   GROUP BY e.id;