CREATE VIEW project_team_leads AS
   SELECT p.id, p.name, e.name AS team_lead
   FROM projects p
   JOIN projectTeam pt ON p.id = pt.project_id
   JOIN Employees e ON pt.employee_id = e.id
   WHERE pt.is_lead = TRUE;