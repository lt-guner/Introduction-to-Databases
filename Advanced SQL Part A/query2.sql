-- write your queries to insert data here
INSERT INTO client (first_name, last_name, email) VALUES ('Sara', 'Smith', 'smiths@hello.com'), ('Miguel', 'Cabrera', 'mc@hello.com'), ('Bo', 'Chan''g', 'bochang@hello.com');
INSERT INTO employee (first_name, last_name, start_date, email) VALUES ('Ananya', 'Jaiswal', '2008-04-10', 'ajaiswal@hello.com'), ('Michael', 'Fern', '2015-07-19', 'michaelf@hello.com'), ('Abdul', 'Rehman', '2018-02-27', 'rehman@hello.com');
INSERT INTO project(cid, title, comments) VALUES ((SELECT client.id FROM client where client.first_name = 'Sara' and client.last_name = 'Smith'), 'Diamond', 'Should be done by Jan 2019'), ((SELECT client.id FROM client where client.first_name = 'Bo' and client.last_name = 'Chan''g'), 'Chan''g', 'Ongoing maintenance'), ((SELECT client.id FROM client where client.first_name = 'Miguel' and client.last_name = 'Cabrera'), 'The Robinson Project', NULL);
INSERT INTO works_on(eid, pid, due_date) VALUES ((SELECT employee.id FROM employee WHERE employee.first_name = 'Ananya' AND employee.last_name = 'Jaiswal'), (SELECT project.id FROM project WHERE project.title = 'Chan''g'), '2020-11-19'), ((SELECT employee.id FROM employee WHERE employee.first_name = 'Michael' AND employee.last_name = 'Fern'), (SELECT project.id FROM project WHERE project.title = 'The Robinson Project'), '2020-12-05'),((SELECT employee.id FROM employee WHERE employee.first_name = 'Abdul' AND employee.last_name = 'Rehman'), (SELECT project.id FROM project WHERE project.title = 'Diamond'), '2021-01-01');

-- Leave the queries below untouched. These are to test your submission correctly.
select * from project;
select * from client;
select * from employee;
select * from works_on;

