create schema SQL_assignment;
use SQL_assignment;

create table Employee
(
id varchar(20) primary key,
First_name VARCHAR(50),
Last_name VARCHAR(50),
Job_Start_Date DATE,
Salary float
);
ALTER TABLE Employee
ADD  department VARCHAR(30);
INSERT INTO Employee (id,First_name,Last_name,Job_Start_Date,Salary,department)
VALUES (1,'Tejaswi','Mandapaka','2023-03-22','50000','ECE');
INSERT INTO Employee 
VALUES (2,'Niharika','Akula','2020-05-01','70000','ECE');
INSERT INTO Employee
VALUES (3,'Divya','Komireddy','2019-07-27','85000','CSE');
INSERT INTO Employee
VALUES(4,'Nikhitha','Pendli','2023-02-24','60000','CSE');
INSERT INTO Employee
VALUES(5,'Sravani','B','2018-06-15','80000','EEE');
SELECT max(Salary) AS Highest_Salary FROM Employee;

SELECT * FROM Employee
WHERE Job_Start_Date > DATE_SUB(CURDATE(), INTERVAL 6 MONTH);

SELECT department, COUNT(*) AS employee_count
FROM Employee
GROUP BY department;


use sql_assignment;
create table lead_details
 (
 lead_id VARCHAR(20) primary key,
 first_name VARCHAR(30),
 last_name varchar(30),
 email_address VARCHAR(50),
 phone_number VARCHAR(15)
 );

  create table consultant_details
 (
 consultant_id VARCHAR(50) primary key,
 lead_id VARCHAR(20),
 first_name VARCHAR(30),
 last_name VARCHAR(30),
 email_address VARCHAR(50),
 phone_number VARCHAR(15),
 Foreign key (lead_id) REFERENCES lead_details(lead_id)
 );

create table submission
(
 submission_id VARCHAR(50) primary key,
 consultant_id VARCHAR(50),
 submission_date DATETIME,
 vendor_company VARCHAR(60),
 vendor_name VARCHAR(80),
 vendor_email_address VARCHAR(50),
 vendor_phone_number VARCHAR(15),
 implementation_partner varchar(60),
 client_name VARCHAR(40),
 pay_rate DOUBLE,
 submission_status VARCHAR(60),
 submission_type VARCHAR(10),
 city VARCHAR(50),
 state VARCHAR(2),
 zip INTEGER,
 FOREIGN KEY (consultant_id) REFERENCES consultant_details(consultant_id)
 );

 create table submission_update
 (
 update_id VARCHAR(20) primary key,
 submission_id VARCHAR(50),
 update_text VARCHAR(50),
 created_date date,
 FOREIGN KEY (submission_id) REFERENCES submission(submission_id)
 );


-- Insert data into the "lead_details" table
INSERT INTO lead_details (lead_id, first_name, last_name, email_address, phone_number) VALUES
('L001', 'Tejaswi', 'Mandapaka', 'tejaswim@example.com', '1234567890'),
('L002', 'Nikhitha', 'Pendli', 'nikhithap@example.com', '9876543210'),
('L003', 'Niharika', 'Akula', 'niharikaa@example.com', '5678901234'),
('L004', 'Divya', 'komireddy', 'divyak@example.com', '8901234567'),
('L005', 'pratyusha', 'Yanala', 'pratyshay@example.com', '4567890123');


-- Insert data into the "consultant_details" table
INSERT INTO consultant_details (consultant_id, lead_id, first_name, last_name, email_address, phone_number) VALUES
('C001', 'L001', 'Tejaswi', 'Mandapaka', 'tejaswim@example.com', '1234567890'),
('C002', 'L002', 'Nikhitha', 'Pendli', 'nikhithap@example.com', '9876543210'),
('C003', 'L003', 'Niharika', 'Akula', 'niharikaa@example.com', '5678901234'),
('C004', 'L004', 'Divya', 'komireddy', 'divyak@example.com', '8901234567'),
('C005', 'L005', 'pratysha', 'Yanala', 'pratyushay@example.com', '4567890123');


-- Insert data into the "submission" table
INSERT INTO submission (submission_id, consultant_id, submission_date, vendor_company, vendor_name, vendor_email_address, vendor_phone_number, implementation_partner, client_name, pay_rate, submission_status, submission_type, city, state, zip) VALUES
('S001', 'C001', '2023-01-15', 'Vendor Company 1', 'Vendor Name 1', 'vendor1@example.com', '1234567890', 'Implementation Partner 1', 'Client Name 1', 5000.00, 'Submitted', 'Type A', 'City 1', 'ST', 12345),
('S002', 'C002', '2022-11-02', 'Vendor Company 2', 'Vendor Name 2', 'vendor2@example.com', '9876543210', 'Implementation Partner 2', 'Client Name 2', 4000.00, 'Submitted', 'Type B', 'City 2', 'ST', 23456),
('S003', 'C003', '2023-02-28', 'Vendor Company 3', 'Vendor Name 3', 'vendor3@example.com', '5678901234', 'Implementation Partner 3', 'Client Name 3', 6000.00, 'Submitted', 'Type C', 'City 3', 'ST', 34567),
('S004', 'C004', '2022-09-20', 'Vendor Company 4', 'Vendor Name 4', 'vendor4@example.com', '8901234567', 'Implementation Partner 4', 'Client Name 4', 5500.00, 'Submitted', 'Type A', 'City 4', 'ST', 45678),
('S005', 'C001', '2023-03-10', 'Vendor Company 5', 'Vendor Name 5', 'vendor5@example.com', '4567890123', 'Implementation Partner 5', 'Client Name 5', 5200.00, 'Submitted', 'Type B', 'City 5', 'ST', 56789),
('S006', 'C002', '2022-12-18', 'Vendor Company 6', 'Vendor Name 6', 'vendor6@example.com', '7890123456', 'Implementation Partner 6', 'Client Name 6', 4500.00, 'Submitted', 'Type C', 'City 6', 'ST', 67890),
('S007', 'C005', '2023-03-10', 'Vendor Company 7', 'Vendor Name 7', 'vendor7@example.com', '2345678901', 'Implementation Partner 7', 'Client Name 7', 4800.00, 'Submitted', 'Type A', 'City 7', 'ST', 78901),
('S008', 'C003', '2023-02-28', 'Vendor Company 8', 'Vendor Name 8', 'vendor8@example.com', '9012345678', 'Implementation Partner 8', 'Client Name 8', 5800.00, 'Submitted', 'Type B', 'City 8', 'ST', 89012),
('S009', 'C003', '2023-02-15', 'Vendor Company 9', 'Vendor Name 9', 'vendor9@example.com', '3456789012', 'Implementation Partner 9', 'Client Name 9', 5100.00, 'Submitted', 'Type C', 'City 9', 'ST', 90123),
('S010', 'C002', '2022-11-02', 'Vendor Company 10', 'Vendor Name 10', 'vendor10@example.com', '6789012345', 'Implementation Partner 10', 'Client Name 10', 5300.00, 'Submitted', 'Type A', 'City 10', 'ST', 01234);


-- 2.  Write a SQL query to update email_address on the consultant_detail table
UPDATE consultant_details SET email_address = 'new_email_address@example.com' WHERE consultant_id = 'CD001';

-- 3. Write a SQL to find total number of submissions for each constulant.
SELECT consultant_details.consultant_id,consultant_details.first_name AS consultant_first_name, consultant_details.last_name AS consultant_last_name,count(*) AS total_submission
FROM consultant_details JOIN submission ON (consultant_details.consultant_id = submission.consultant_id) GROUP BY consultant_details.consultant_id;

-- 4. Write a SQL to find total number of submissions for each constulant by each submission day
SELECT consultant_details.consultant_id,consultant_details.first_name AS consultant_first_name, consultant_details.last_name AS consultant_last_name,
count(*) AS total_submission,submission.submission_date
FROM consultant_details JOIN submission ON (consultant_details.consultant_id = submission.consultant_id) GROUP BY consultant_details.consultant_id,submission.submission_date;


-- 5. write a SQL to delete all submissions where "rate" is null
DELETE FROM submission WHERE pay_rate IS NULL;

-- 6. Given a lead name and submission date, Write a SQL query to find the submissions.
SELECT submission.* FROM submission JOIN consultant_details ON (submission.consultant_id=consultant_details.consultant_id)
JOIN lead_details ON (lead_details.lead_id=consultant_details.lead_id)
WHERE ( lead_details.first_name ="John" AND lead_details.last_name="Doe");

-- 7. Write a SQL query to find the number of submissions by each lead.
SELECT ld.lead_id,ld.first_name,ld.last_name, COUNT(s.submission_id) AS num_submissions FROM lead_details AS ld
LEFT JOIN consultant_details AS cd ON (ld.lead_id = cd.lead_id)
LEFT JOIN submission AS s ON (cd.consultant_id = s.consultant_id)
GROUP BY ld.lead_id;