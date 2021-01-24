-- Complete your SQL here

DROP TABLE IF EXISTS work;
DROP TABLE IF EXISTS associate;
DROP TABLE IF EXISTS project;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS hw_company;
DROP TABLE IF EXISTS client;

CREATE TABLE hw_company
(
    company_id INT not null auto_increment,
    primary key (company_id)


);

CREATE TABLE employee
(
    fname       VARCHAR(50) not null,
    lname       VARCHAR(50) not null,
    employee_id INT         NOT NULL AUTO_INCREMENT,
    company_id  INT         not null,
    PRIMARY KEY (employee_id),
    foreign key (company_id) references company (company_id)

);



CREATE TABLE client
(
    fname     VARCHAR(50) not null,
    lname     VARCHAR(50) not null,
    client_id INT         NOT NULL AUTO_INCREMENT,
    primary key (client_id)


);

CREATE TABLE category
(
    category_id int           not null auto_increment,
    description varchar(1000) not null,

    primary key (category_id)


);

CREATE TABLE project
(
    project_name  VARCHAR(50)   not null,
    project_desp  varchar(1000) not null,
    project_id    INT           NOT NULL AUTO_INCREMENT,
    company_id    int           not null,
    category_id   int           not null,
    manager_id    int           not null,
    primary_stake int           not null,


    PRIMARY KEY (project_id),
    foreign key (company_id) references company (company_id),
    foreign key (category_id) references category (category_id),
    foreign key (manager_id) references employee (employee_id),
    foreign key (primary_stake) references client (client_id)
);



CREATE TABLE work
(
    employee_id INT         not null,
    project_id  INT         not null,
    role        varchar(50) not null,
    PRIMARY KEY (employee_id, project_id),
    FOREIGN KEY (employee_id) references employee (employee_id),
    FOREIGN KEY (project_id) references project (project_id)


);

CREATE TABLE associate
(
    client_id  INT not null,
    project_id INT not null,
    PRIMARY KEY (client_id, project_id),
    FOREIGN KEY (client_id) references client (client_id),
    FOREIGN KEY (project_id) references project (project_id)

);


INSERT INTO hw_company()
VALUES (),
       (),
       (),
       ();


INSERT INTO employee(fname, lname, company_id)
VALUES ('aa', 'Jan', 1),
       ('bb', 'Feb', 2),
       ('cc', 'Mar', 3),
       ('dd', 'April', 4),
       ('ee', 'May', 3),
       ('ff', 'June', 1);


INSERT into client(fname, lname)
values ('client', 'one'),
       ('client2', 'two'),
       ('client3', 'three'),
       ('client4', 'four');



INSERT INTO category(description)
VALUES ('landscaping'),
       ('marine'),
       ('transport');


INSERT INTO project(project_name, project_desp, company_id,
                    category_id, manager_id, primary_stake)
VALUES ('project1', 'desp1', 1, 1, 2, 3),
       ('project2', 'desp2', 2, 3, 6, 1),
       ('project3', 'desp3', 3, 2, 3, 2),
       ('project4', 'desp4', 4, 2, 5, 4);


INSERT INTO work(employee_id, project_id, role)
VALUES (1, 4, 'employee'),
       (2, 1, 'manager'),
       (3, 3, 'manager'),
       (4, 1, 'employee'),
       (5, 4, 'manager'),
       (6, 2, 'manager');

insert into associate(client_id, project_id)
VALUES (1, 4),
       (2, 2),
       (3, 1),
       (4, 3);

# Select all employees by a given name
select fname as f, lname as l, employee_id as ei, company_id as ci
from employee
where fname = 'aa' || lname = 'June';

# Select all employees who work in a particular department
select category_id
from project
where manager_id = 3;

# Select all employees and clients related to a particular project
select c.fname, c.lname, e.fname, e.lname
from project as p,
     client as c,
     employee as e
where p.manager_id = e.employee_id
  and p.primary_stake = c.client_id
  and project_name = 'project1';

# Select all employees who are managers
select e.employee_id, e.fname, e.lname
from employee as e,
     work as w
where e.employee_id = w.employee_id
  and w.role = 'manager';