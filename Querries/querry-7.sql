SELECT DISTINCT c.name
    FROM Clients c
    JOIN projects p ON c.id = p.client_id
    WHERE p.deadline > '2024-10-31';