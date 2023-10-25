# sql-analysis

As a new data engineer at Pewlett Hackard (a fictional company), my first major task was to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

* For this project, I designed tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answered questions about the data by performing data modeling, data engineering, and data analysis, respectively.

# Data Modeling
* To create the sketch, I inspected the CSV files, and then sketched an Entity Relationship Diagram of the tables. 

![Alt text](<Screenshot 2023-10-25 102353.png>)

# Data Engineering
* I used the provided information to create a table schema for each of the six CSV files. By remembering to specify the data types, primary keys, foreign keys, and other constraints and be sure to create the tables in the correct order to handle the foreign keys and then imported each CSV file into its corresponding SQL table. 

![Alt text](<Screenshot 2023-10-25 102612.png>)

# Data Analysis
* I answered the following questions from the information gotten: 
  * List the employee number, last name, first name, sex, and salary of each employee.
  * List the first name, last name, and hire date for the employees who were hired in 1986.
  * List the manager of each department along with their department number, department name, employee number, last name, and first name.
  * List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
  * List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
  * List each employee in the Sales department, including their employee number, last name, and first name.
  * List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
  * List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

# Entity Relationship Diagram(ERD)
* The Entity-Relationship Diagram provides a visual representation of the organization of tables and their interrelationships within the database. This ERD image was created using QuickDBD.

![Alt text](<Screenshot 2023-10-20 043730.png>)