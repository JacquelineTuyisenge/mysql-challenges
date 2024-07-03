CREATE FUNCTION days_until_deadline(project_id INT) RETURNS INT
  DETERMINISTIC
  READS SQL DATA
  BEGIN
      DECLARE days_left INT;
      SELECT DATEDIFF(deadline, CURDATE()) INTO days_left
      FROM projects
      WHERE id = project_id;
      RETURN days_left;
  END 