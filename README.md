Web Homework Task 4 
==========

Exercise One - SQL
----------

Design a database and complete the ER diagram, relational schema and SQL tables for the following description

A construction company has many employees. It also has many projects. One employee can work on many projects and one project can have many employees working on it. Each project must have one employee who is a project manager assigned to the project and will never have more than one project manager. Projects will also have clients associated with them. One project can have many clients associated with it. Clients are always from outside of the company and are never employees in the company. Each project will also have one and no more than one client who is the primary stakeholder for the project. Projects will also have a category that classifies them as a certain type of job like landscaping, marine, transport etc. A project can only ever be classified as one type of category but there may be many projects that are the same category.

The database must also store the following information about all of these entities:
- The full names of all employees
- The role of each employee in projects
- The project manager of every project
- The primary stakeholder of every project
- Clients associated with projects
- A name and description for every project
- The full name of every client
- Detailed descriptions of project categories

#### First Step:

Complete an ER diagram that shows the entities, relationships and attributes for the information outlined above. You should make sure to illustrate the cardinalities between entities; make sure to make it clear the one to many and many to many relationships as this will be essential for planning the tables in your database. 

You should save your ER diagram in a suitable image or document within your IntelliJ project. You may do this inside the spec directory. `draw.io` is suggested as a good option for creating ER diagrams; make sure to practice with it if you intend to use it during assessments; otherwise you may hand draw your diagrams and save an image of it or use PowerPoint or something similar. 

#### Second Step:

Create a relational schema for your database. This should outline all tables in the order in which you'd create them. For each table you should outline the table name and then within round brackets, list the attributes in the table. Make sure to outline primary keys and foreign keys. The suggested way to outline foreign and primary keys is:
- primary key:  <ins>underlined</ins>
- foreign key: astrix  `*`

#### Third step:

Create all of the SQL required to create the tables in this database. Then create more SQL to insert the necessary data in the database. Make sure that all foreign keys are created correctly and that tables and data are created in an order that will form the dependencies between the different tables correctly. 

#### Fourth step:

Create the following queries is SQL and check that they return the correct data based on the data you created in the third step:

- Select all employees by a given name
- Select all employees who work in a particular department
- Select all employees and clients related to a particular project
- Select all employees who are managers


Exercise Two - JDBC, Servlets, JSP etc
----------

In this task you will edit the biography servlet, biography DAO, biography object and biography JSP file so that it can get information about biographies from the database and display them within an HTML document through the use of JSP/JSTL/EL.

Note: there is also an example included with this exercise; the example shows you how to view an image gallery based on associated data in SQL; the example also has an article creation page with an image upload option. this will be a good reference example for any projects you wish to create that require file uploads. 

#### First Step

  Do everything necessary to set up your database connections and Tomcat. Remember to setup your database connection in the ‘connection.properties’ file and in IntelliJ. Run the SQL script that will create the SQL tables for this task. It is called ‘db-init-practice.sql’.
 
#### Second Step
 
 Complete the ‘Biography’ class so that it can encapsulate all attributes in the SQL table created by the ‘db-init-practice.sql’ script and has all necessary getters and setters. As you will be using this object with JSP, you should follow the conventions of JavaBeans.
 
#### Third Step
 
Create a ‘getAllBiographies’ method within the BiographyDAO so that it uses the database connection to get a list of Biography objects.
 
#### Fourth Step
 
 Complete the necessary steps in the BiographyListServlet that will use the DAO method you created to get a list of biography objects, store them in a request or session attribute and then pass control to the biographies JSP file.
 
#### Fifth Step
 
 In the correct JSP file, loop through all biography objects and display them in HTML.
 
 
 