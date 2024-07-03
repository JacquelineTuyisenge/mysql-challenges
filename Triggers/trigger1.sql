CREATE TRIGGER project_update_audit
   AFTER UPDATE ON projects
   FOR EACH ROW
   BEGIN
       INSERT INTO project_audit_log (project_id, old_name, new_name, old_requirements, new_requirements, old_deadline, new_deadline, updated_at)
       VALUES (OLD.id, OLD.name, NEW.name, OLD.requirements, NEW.requirements, OLD.deadline, NEW.deadline, NOW());
   END 