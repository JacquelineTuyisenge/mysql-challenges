CREATE PROCEDURE add_client_and_project(
     IN client_name VARCHAR(255),
     IN client_email VARCHAR(255),
     IN project_name VARCHAR(255),
     IN requirements TEXT,
     IN deadline DATE
    )
    BEGIN
     DECLARE new_client_id INT;

     INSERT INTO Clients (name, email) VALUES (client_name, client_email);
     SET new_client_id = LAST_INSERT_ID();

     INSERT INTO projects (name, requirements, deadline, client_id)
     VALUES (project_name, requirements, deadline, new_client_id);
    END 