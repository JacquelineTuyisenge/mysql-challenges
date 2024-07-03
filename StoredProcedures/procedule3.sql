CREATE PROCEDURE update_project_team(
   IN project_id INT,
   INOUT team_members TEXT
    )
    BEGIN
   DELETE FROM projectTeam WHERE project_id = project_id;
    ->
   IF team_members IS NOT NULL THEN
       INSERT INTO projectTeam (project_id, employee_id)
       SELECT project_id, id
       FROM Employees
       WHERE FIND_IN_SET(name, team_members);
   END IF;
    END