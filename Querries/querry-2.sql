-- List all projects for "Big Retail Inc." ordered by deadline.

SELECT p.* FROM projects p JOIN Clients c ON p.Client_id = c.id Where c.name = 
'Big Retail Inc.' ORDER BY p.deadline;