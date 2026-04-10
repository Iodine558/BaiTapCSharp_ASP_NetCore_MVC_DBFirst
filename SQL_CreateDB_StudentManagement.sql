-- Create Database
CREATE DATABASE StudentManagement;
GO

USE StudentManagement;
GO

-- Table: Student
CREATE TABLE Student (
    StudentId INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) UNIQUE,
    DateOfBirth DATE
);

-- Table: Course
CREATE TABLE Course (
    CourseId INT PRIMARY KEY IDENTITY(1,1),
    CourseName NVARCHAR(100) NOT NULL,
    Credits INT NOT NULL
);

-- Table: Enrollment (Many-to-Many)
CREATE TABLE Enrollment (
    EnrollmentId INT PRIMARY KEY IDENTITY(1,1),
    StudentId INT NOT NULL,
    CourseId INT NOT NULL,
    Grade FLOAT,

    FOREIGN KEY (StudentId) REFERENCES Student(StudentId),
    FOREIGN KEY (CourseId) REFERENCES Course(CourseId)
);

-- Students
INSERT INTO Student (Name, Email, DateOfBirth)
VALUES 
('Nguyen Van A', 'a@example.com', '2003-05-10'),
('Tran Thi B', 'b@example.com', '2002-08-21');

-- Courses
INSERT INTO Course (CourseName, Credits)
VALUES 
('Database Systems', 3),
('Data Structures', 4);

-- Enrollment
INSERT INTO Enrollment (StudentId, CourseId, Grade)
VALUES 
(1, 1, 8.5),
(1, 2, 7.0),
(2, 1, 9.0);