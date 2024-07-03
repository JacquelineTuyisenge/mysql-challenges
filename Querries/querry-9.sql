SELECT * FROM projects WHERE deadline < '2024-12-01'
    UNION
    SELECT * FROM projects WHERE name LIKE '%Management%';