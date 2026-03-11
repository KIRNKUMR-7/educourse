-- Create Database
CREATE DATABASE IF NOT EXISTS Courseregister;
USE Courseregister;

-- Table for available courses
CREATE TABLE IF NOT EXISTS course (
    CourseId INT PRIMARY KEY,
    CourseName VARCHAR(255),
    DurationMonth INT,
    Trainer VARCHAR(255)
);

-- Table for registered students
CREATE TABLE IF NOT EXISTS course_register (
    id INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(255),
    email VARCHAR(255),
    name VARCHAR(255)
);

-- Insert dummy data for courses
INSERT INTO course (CourseId, CourseName, DurationMonth, Trainer) VALUES
(1, 'Java Full Stack', 6, 'John Doe'),
(2, 'Python Web Development', 4, 'Jane Smith'),
(3, 'Data Science with R', 5, 'Bob Wilson'),
(4, 'Frontend Mastery', 3, 'Alice Brown');
