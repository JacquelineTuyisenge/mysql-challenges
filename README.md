# 📊 MySQL Challenges

## Tasks:

- Develop the database using MySQL (apply all the necessary table constraints and relationships).
- Populate the database based on the data provided in the shared documents.
- Develop Database Queries, Views, Functions, Procedures, and Triggers.

## Deliverables:

- SQL scripts for the database, all queries, functions, views, and stored procedures.
- Diagrams illustrating database schema and relationships.

### 📁 Database

#### 📅 Queries
1. Find all projects with a deadline before December 1st, 2024.
2. List all projects for "Big Retail Inc." ordered by deadline.
3. Find the team lead for the "Mobile App for Learning" project.
4. Find projects containing "Management" in the name.
5. Count the number of projects assigned to David Lee.
6. Find the total number of employees working on each project.
7. Find all clients with projects having a deadline after October 31st, 2024.
8. List employees who are not currently team leads on any project.
9. Combine a list of projects with deadlines before December 1st and another list with "Management" in the project name.
10. Display a message indicating if a project is overdue (deadline passed).

#### 👁️ Views
1. Create a view to simplify retrieving client contact information.
2. Create a view to show only ongoing projects (not yet completed).
3. Create a view to display project information along with assigned team leads.
4. Create a view to show project names and client contact information for projects with a deadline in November 2024.
5. Create a view to display the total number of projects assigned to each employee.
6. Create a view to display project details along with the total number of team members assigned.
7. Create a view to show overdue projects with the number of days overdue.

#### 🛠️ Functions
1. Create a function to calculate the number of days remaining until a project deadline.
2. Create a function to calculate the number of days a project is overdue.

#### 🚀 Stored Procedures
1. Create a stored procedure to add a new client and their first project in one call.
2. Create a stored procedure to move completed projects (past deadlines) to an archive table.
3. Create a stored procedure to update project team members (remove existing, add new ones).

#### 🔄 Triggers
1. Create a trigger to log any updates made to project records in a separate table for auditing purposes.
2. Create a trigger to ensure a team lead assigned to a project is a valid employee.
3. Create a trigger to prevent deleting a project that still has assigned team members.

## 🚀 Getting Started
To run these SQL scripts, ensure you have a MySQL environment set up. Import the provided scripts and execute them in your MySQL client.
