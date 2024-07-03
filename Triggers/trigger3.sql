CREATE TRIGGER prevent_delete_project_with_team_members
    BEFORE DELETE ON projects
    FOR EACH ROW
    BEGIN
        DECLARE team_member_count INT;
        SELECT COUNT(*)
        INTO team_member_count
        FROM projectTeam
        WHERE project_id = OLD.id;
        IF team_member_count > 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Cannot delete project with assigned team members';
        END IF;
    END