create database project_dbms;
use project_dbms;
CREATE TABLE Roles (
    role_id INT PRIMARY KEY,
    role_name VARCHAR(50),
    role_desc VARCHAR(255)
);
CREATE TABLE Login (
    login_id INT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(50),
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES Roles(role_id)
);
CREATE TABLE Student (
    stud_id INT PRIMARY KEY,
    stud_name VARCHAR(50),
    stud_mobile VARCHAR(50),
    stud_mail VARCHAR(100),
    stud_addr VARCHAR(255)
);
CREATE TABLE Employee (
    aadhar_no VARCHAR(12) PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_mobile VARCHAR(50),
    emp_mail VARCHAR(100),
    wrking_hrs INT,
    salary DECIMAL(10,2)
);
CREATE TABLE TeachingStaff (
    teach_id INT PRIMARY KEY,
    subjects VARCHAR(255),
    no_of_classes INT,
    designation VARCHAR(50),
    aadhar_no VARCHAR(12),
    FOREIGN KEY (aadhar_no) REFERENCES Employee(aadhar_no)
);
CREATE TABLE NonTeachingStaff (
    id INT PRIMARY KEY,
    post VARCHAR(50),
    aadhar_no VARCHAR(12),
    FOREIGN KEY (aadhar_no) REFERENCES Employee(aadhar_no)
);
CREATE TABLE Attendance (
    stud_id INT,
    no_of_lectures INT,
    no_of_lectures_present INT,
    no_of_lectures_absent INT,
    FOREIGN KEY (stud_id) REFERENCES Student(stud_id)
);
CREATE TABLE ReportCard (
    stud_id INT,
    marks DECIMAL(5,2),
    phy_fitness VARCHAR(50),
    class_parti VARCHAR(50),
    course_credits INT,
    grade VARCHAR(2),
    FOREIGN KEY (stud_id) REFERENCES Student(stud_id)
);
CREATE TABLE ExtraCourse (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    course_credits INT
);

INSERT INTO Roles (role_id, role_name, role_desc) VALUES
(1, 'Student', 'A student in the school'),
(2, 'Teacher', 'A teacher in the school'),
(3, 'Admin', 'An administrator of the school'),
(4, 'Principal', 'The principal of the school'),
(5, 'Vice Principal', 'The vice principal of the school'),
(6, 'Counselor', 'A school counselor'),
(7, 'Librarian', 'A school librarian'),
(8, 'Janitor', 'A school janitor'),
(9, 'Nurse', 'A school nurse'),
(10, 'Cafeteria Staff', 'A cafeteria staff member');
select* from Roles;

INSERT INTO Student (stud_id, stud_name, stud_mobile, stud_mail, stud_addr) VALUES
(101, 'John Doe', '1234567890', 'john.doe@example.com', '123 Main St'),
(102, 'Jane Smith', '0987654321', 'jane.smith@example.com', '456 Elm St'),
(103, 'Emily Davis', '3210987654', 'emily.davis@example.com', '789 Oak St'),
(104, 'Michael Brown', '4567890123', 'michael.brown@example.com', '321 Pine St'),
(105, 'Sarah White', '5678901234', 'sarah.white@example.com', '654 Maple St'),
(106, 'William Green', '6789012345', 'william.green@example.com', '987 Elm St'),
(107, 'Jennifer Black', '7890123456', 'jennifer.black@example.com', '456 Birch St'),
(108, 'Robert Red', '8901234567', 'robert.red@example.com', '789 Cedar St'),
(109, 'Elizabeth Blue', '9012345678', 'elizabeth.blue@example.com', '321 Ash St'),
(110, 'James Yellow', '0123456789', 'james.yellow@example.com', '654 Poplar St');
select* from Student;

INSERT INTO Employee (aadhar_no, emp_name, emp_mobile, emp_mail, wrking_hrs, salary) VALUES
('123456789012', 'Mr. Smith', '1234567890', 'smith@example.com', 40, 50000.00),
('234567890123', 'Ms. Johnson', '2345678901', 'johnson@example.com', 35, 45000.00),
('321098765412', 'Ms. Lee', '3210987654', 'lee@example.com', 38, 55000.00),
('456789012312', 'Mr. Kim', '4567890123', 'kim@example.com', 32, 52000.00),
('567890123412', 'Ms. Park', '5678901234', 'park@example.com', 35, 53000.00),
('678901234512', 'Mr. Choi', '6789012345', 'choi@example.com', 40, 54000.00),
('789012345612', 'Ms. Han', '7890123456', 'han@example.com', 37, 51000.00),
('890123456712', 'Mr. Lee', '8901234567', 'lee2@example.com', 39, 56000.00),
('901234567812', 'Ms. Kim', '9012345678', 'kim2@example.com', 33, 57000.00),
('412345678912', 'Mr. Park', '0123456789', 'park2@example.com', 36, 58000.00),
('123956789012', 'Ms. Choi', '1234567890', 'choi2@example.com', 41, 59000.00),
('234567590123', 'Mr. Han', '2345678901', 'han2@example.com', 34, 60000.00);
select* from Employee;

INSERT INTO TeachingStaff (teach_id, subjects, no_of_classes, designation, aadhar_no) VALUES
(201, 'Math, Science', 30, 'Professor', '123456789012'),
(202, 'English, History', 25, 'Assistant Professor', '234567890123'),
(203, 'Chemistry, Biology', 25, 'Associate Professor', '321098765412'),
(204, 'Physics, Astronomy', 20, 'Assistant Professor', '456789012312'),
(205, 'Mathematics, Geometry', 22, 'Professor', '567890123412');
select* from TeachingStaff;

INSERT INTO NonTeachingStaff (id, post, aadhar_no) VALUES
(301, 'Cleaner', '678901234512'),
(302, 'Security', '789012345612'),
(303, 'Maintenance', '890123456712'),
(304, 'Security', '901234567812'),
(305, 'Cafeteria Manager', '412345678912');
select* from NonTeachingStaff;

INSERT INTO Attendance (stud_id, no_of_lectures, no_of_lectures_present, no_of_lectures_absent) VALUES
(101, 30, 28, 2),
(102, 25, 23, 2),
(103, 30, 28, 2),
(104, 25, 23, 2),
(105, 35, 33, 2),
(106, 20, 18, 2),
(107, 22, 20, 2),
(108, 27, 25, 2),
(109, 32, 30, 2),
(110, 28, 26, 2);
select* from Attendance;

INSERT INTO ReportCard (stud_id, marks, phy_fitness, class_parti, course_credits, grade) VALUES
(101, 85.5, 'Good', 'Active', 10, 'A'),
(102, 80.0, 'Average', 'Passive', 10, 'B'),
(103, 85.5, 'Good', 'Active', 10, 'A'),
(104, 80.0, 'Average', 'Passive', 10, 'B'),
(105, 90.5, 'Excellent', 'Active', 10, 'A+'),
(106, 75.0, 'Good', 'Passive', 10, 'A-'),
(107, 82.5, 'Average', 'Active', 10, 'B+'),
(108, 77.5, 'Good', 'Passive', 10, 'B-'),
(109, 92.0, 'Excellent', 'Active', 10, 'A+'),
(110, 87.5, 'Good', 'Passive', 10, 'A-');
select* from ReportCard;

INSERT INTO ExtraCourse (course_id, course_name, course_credits) VALUES
(11, 'Swimming', 5),
(12, 'Reading', 5),
(13, 'Writing', 5),
(14, 'Skating', 5),
(15, 'Art History', 5),
(16, 'Music Theory', 5),
(17, 'Dance', 5),
(18, 'Theater', 5),
(19, 'Photography', 5),
(20, 'Film Studies', 5);
select* from ExtraCourse;

#1. Count the number of students in the database
SELECT COUNT(*) FROM Student;

#2. Find the average salary of employees
SELECT AVG(salary) FROM Employee;

#3. List all students with their average marks
SELECT stud_id, AVG(marks) as AverageMarks
FROM ReportCard
GROUP BY stud_id;

#4. Find the total number of lectures attended by each student
SELECT stud_id, SUM(no_of_lectures) as TotalLectures
FROM Attendance
GROUP BY stud_id;

#5. List all employees with their total working hours
SELECT aadhar_no, SUM(wrking_hrs) as TotalWorkingHours
FROM Employee
GROUP BY aadhar_no;

#6. Find the total number of courses offered
SELECT COUNT(*) FROM ExtraCourse;

#7. Update the salary of an employee
UPDATE Employee
SET salary = 60000.00
WHERE aadhar_no = '123456789012';
select salary from Employee
WHERE aadhar_no = '123456789012';

#8. Delete a student from the database
DELETE FROM attendance WHERE stud_id = 101;
DELETE FROM reportcard WHERE stud_id = 101;
DELETE FROM Student WHERE stud_id = 101;
select* from Student;

#9. Insert a new student into the database
INSERT INTO Student (stud_id, stud_name, stud_mobile, stud_mail, stud_addr)
VALUES (111, 'New Student', '1112223333', 'new.student@example.com', 'New Address');
select* from Student
WHERE stud_id = 111;

#10. Create a new table for student grades
CREATE TABLE StudentGrades (
    stud_id INT,
    course_id INT,
    grade VARCHAR(2),
    FOREIGN KEY (stud_id) REFERENCES Student(stud_id),
    FOREIGN KEY (course_id) REFERENCES ExtraCourse(course_id)
);
select* from StudentGrades;

#11. Add a new column to the Employee table for date of joining
ALTER TABLE Employee
ADD COLUMN date_of_joining DATE;
select* from employee;

#12. Find the highest paid employee
SELECT emp_name, MAX(salary) as HighestSalary
FROM Employee;

#13. List all students who have attended more than 25 lectures
SELECT stud_id, SUM(no_of_lectures) as TotalLectures
FROM Attendance
GROUP BY stud_id
HAVING SUM(no_of_lectures) > 25;

#14. Find the average number of lectures attended per student
SELECT AVG(no_of_lectures) as AverageLectures
FROM Attendance;

#15. List all employees with their designation
SELECT emp_name, designation
FROM Employee
JOIN TeachingStaff ON Employee.aadhar_no = TeachingStaff.aadhar_no;

#16. Update the mobile number of a student
UPDATE Student
SET stud_mobile = '9998887777'
WHERE stud_id = 102;
select* from Student
WHERE stud_id = 102;

#17. Delete a course from the database
DELETE FROM ExtraCourse
WHERE course_id = 11;
select* from extracourse;

#18. Insert a new course into the database
INSERT INTO ExtraCourse (course_id, course_name, course_credits)
VALUES (21, 'Painting', 5);
select* from extracourse;

#19.Drop the StudentGrades table
DROP TABLE StudentGrades;

#20. List all employees with their total working hours and salary
SELECT emp_name, SUM(wrking_hrs) as TotalWorkingHours, salary
FROM Employee
GROUP BY emp_name, salary;

