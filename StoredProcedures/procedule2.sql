CREATE PROCEDURE move_completed_projects_to_archive()
    BEGIN
     INSERT INTO archive_projects
     SELECT *
     FROM projects
     WHERE deadline < CURDATE();
     DELETE FROM projects
     WHERE deadline < CURDATE();
    END 