CREATE VIEW ongoing_projects AS
     SELECT * FROM projects 
     WHERE deadline > CURDATE();