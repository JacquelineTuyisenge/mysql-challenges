SELECT name, 
    deadline,  
    IF(deadline < CURDATE(), 'Overdue', 'On time') AS status 
    FROM projects;