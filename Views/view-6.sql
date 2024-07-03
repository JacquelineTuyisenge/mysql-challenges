DELIMITER ;
 CREATE VIEW project_details_with_team_count AS
   SELECT p.id, p.name, p.requirements, p.deadline, p.client_id,
          COUNT(pt.employee_id) AS team_member_count
   FROM projects p
   LEFT JOIN projectTeam pt ON p.id = pt.project_id
   GROUP BY p.id;
