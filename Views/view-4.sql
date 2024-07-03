CREATE VIEW november_projects AS
    SELECT p.name, c.name AS client_name, c.email
    FROM projects p
    JOIN Clients c ON p.client_id = c.id
    WHERE p.deadline BETWEEN '2024-11-01' AND '2024-11-30';