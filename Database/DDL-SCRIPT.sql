SELECT * FROM person;
DROP SCHEMA university_management_system;

CREATE SCHEMA university_management_system;
USE university_management_system;

DROP TABLE IF EXISTS faculty;

ALTER TABLE faculty
MODIFY COLUMN faculty_name VARCHAR(255);
CREATE TABLE Faculty (
  Faculty_id INTEGER NOT NULL AUTO_INCREMENT,
  Faculty_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (Faculty_id)
);

DROP TABLE IF EXISTS department;
ALTER TABLE department
MODIFY COLUMN department_name VARCHAR(255);
CREATE TABLE department (
	department_id INTEGER NOT NULL AUTO_INCREMENT,
    faculty_id INTEGER NOT NULL,
    department_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (department_id),
    FOREIGN KEY (faculty_id) REFERENCES faculty (faculty_id)
);

DROP TABLE IF EXISTS role;
CREATE TABLE role (
	role_id INTEGER NOT NULL AUTO_INCREMENT,
    role_type INTEGER NOT NULL,
    PRIMARY KEY (role_id)
);

DROP TABLE IF EXISTS gender;
CREATE TABLE gender (
	gender_id INTEGER NOT NULL AUTO_INCREMENT,
    gender VARCHAR(255) NOT NULL,
    PRIMARY KEY (gender_id)
);

DROP TABLE IF EXISTS user;
CREATE TABLE user (
	user_id INTEGER NOT NULL AUTO_INCREMENT,
    role_id INTEGER NOT NULL,
    gender_id INTEGER NOT NULL,
    email_address VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    birth_of_date DATE NOT NULL,
    nationality VARCHAR(255) NOT NULL,
    PRIMARY KEY (user_id),
    FOREIGN KEY (role_id) REFERENCES role(role_id),
    FOREIGN KEY (gender_id) REFERENCES gender(gender_id)
);

DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
	position_id INTEGER NOT NULL AUTO_INCREMENT,
    position_name VARCHAR(25) NOT NULL,
    description TEXT,
    PRIMARY KEY (position_id) 
);

DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
	employee_id INTEGER AUTO_INCREMENT,
    user_id INTEGER NOT NULL,
    faculty_id INTEGER NOT NULL,
    position_id INTEGER NOT NULL,
    is_administrator ENUM("YES", "NO"),
    PRIMARY KEY(employee_id),
    FOREIGN KEY ( user_id) REFERENCES user(user_id),
    FOREIGN KEY (faculty_id) REFERENCES faculty(faculty_id),
    FOREIGN KEY (position_id) REFERENCES `position`(position_id)
);

DROP TABLE IF EXISTS student;
CREATE TABLE student (
	student_id INTEGER AUTO_INCREMENT,
    user_id INTEGER NOT NULL,
    semester INTEGER NOT NULL,
    academic_year YEAR NOT NULL,
    PRIMARY KEY (student_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);

DROP TABLE IF EXISTS student_department;
CREATE TABLE student_department (
	student_department_id INTEGER AUTO_INCREMENT,
    student_id INTEGER NOT NULL,
    department_id INTEGER NOT NULL,
    PRIMARY KEY (student_department_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);

DROP TABLE IF EXISTS teacher;
CREATE TABLE teacher (
	teacher_id INTEGER AUTO_INCREMENT,
    employee_id INTEGER NOT NULL,
    PRIMARY KEY (teacher_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

DROP TABLE IF EXISTS course_type;
CREATE TABLE course_type (
	course_type_id INTEGER AUTO_INCREMENT,
    course_type VARCHAR(255) NOT NULL,
    course_duration TIME NOT NULL,
    PRIMARY KEY (course_type_id)
);

DROP TABLE IF EXISTS course_mode;
CREATE TABLE course_mode (
	course_mode_id INTEGER AUTO_INCREMENT,
    course_mode VARCHAR(25) NOT NULL,
    PRIMARY KEY (course_mode_id)
);

DROP TABLE IF EXISTS academic_details;
CREATE TABLE academic_details (
	academic_details_id INTEGER AUTO_INCREMENT,
    academic_semester VARCHAR(255) NOT NULL,
    semester_number INTEGER NOt NULL,
    academic_year YEAR NOT NULL,
    year_of_studey INTEGER NOT NULL,
	PRIMARY KEY (academic_details_id)
);

DROP TABLE IF EXISTS course;
CREATE TABLE course (
	course_id INTEGER AUTO_INCREMENT,
    department_id INTEGER NOT NULL,
    course_type_id INTEGER NOT NULL,
    course_mode_id INTEGER NOT NULL, 
    academic_details_id INTEGER NOT NULL,
    employee_id INTEGER NOT NULL,
    course_name VARCHAR(255) NOT NULL,
    course_start_time TIME NOT NULL,
    course_end_time TIME NOT NULL,
    total_hours INTEGER NOT NULL,
    course_credits INTEGER NOT NULL,
    course_start_date DATE NOT NULL,
    course_end_date DATE NOT NULL,
    course_day VARCHAR (25) NOT NULL,
    PRIMARY KEY (course_id),
    FOREIGN KEY (department_id) REFERENCES department(department_id),
    FOREIGN KEY (course_type_id) REFERENCES course_type(course_type_id),
    FOREIGN KEY (course_mode_id) REFERENCES course_mode(course_mode_id),
    FOREIGN KEY (academic_details_id) REFERENCES academic_details(academic_details_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

DROP TABLE IF EXISTS student_course;
CREATE TABLE student_course (
	student_course_id INTEGER AUTO_INCREMENT,
    student_id INTEGER NOT NULL,
    course_id INTEGER NOT NULL,
    PRIMARY KEY (student_course_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

DROP TABLE IF EXISTS teacher_course;
CREATE TABLE teacher_course (
	teacher_course_id INTEGER AUTO_INCREMENT,
    course_id INTEGER NOT NULL,
    teacher_id INTEGER NOT NULL,
    PRIMARY KEY (teacher_course_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id)
);

DROP TABLE IF EXISTS course_final_location;
CREATE TABLE course_final_location (
	course_final_location_id INTEGER AUTO_INCREMENT,
    course_id INTEGER NOT NULL,
    mode_online_id INTEGER NOT NULL,
    mode_stationary_id INTEGER NOT NULL,
    PRIMARY KEY (course_final_location_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (mode_online_id) REFERENCES mode_online(mode_online_id),
    FOREIGN KEY (mode_stationary_id) REFERENCES mode_stationary(mode_stationary_id)
);

DROP TABLE IF EXISTS mode_online;
CREATE TABLE mode_online (
	mode_online_id INTEGER AUTO_INCREMENT, 
    meeting_link VARCHAR(255) NOT NULL,
	password BINARY(128) NOT NULL,
    PRIMARY KEY (mode_online_id)
);

DROP TABLE IF EXISTS mode_stationary;
CREATE TABLE mode_stationary (
	mode_stationary_id INTEGER AUTO_INCREMENT,
    classroom_id INTEGER NOT NULL,
    PRIMARY KEY (mode_stationary_id),
    FOREIGN KEY (classroom_id) REFERENCES classroom(classroom_id)
);

DROP TABLE IF EXISTS address;
CREATE TABLE address (
	address_id INTEGER AUTO_INCREMENT,
    street_name VARCHAR (255) NOT NULL,
    street_number INTEGER NOT NULL,
    post_code INTEGER NOT NULL,
    city VARCHAR(255) NOT NULL,
    PRIMARY KEY (address_id)
);

DROP TABLE IF EXISTS building;
CREATE TABLE building (
  building_id INTEGER AUTO_INCREMENT,
  address_id INTEGER NOT NULL,
  building_name VARCHAR(255) NOT NULL,
  building_number INTEGER NOT NULL,
  PRIMARY KEY (building_id),
  FOREIGN KEY (address_id) REFERENCES address(address_id)
);

DROP TABLE IF EXISTS classroom;
CREATE TABLE classroom (
	classroom_id INTEGER AUTO_INCREMENT,
    building_id INTEGER NOT NULL,
    room_number INTEGER NOT NULL,
    floor INTEGER NOT NULL,
    PRIMARY KEY (classroom_id),
    FOREIGN KEY (building_id) REFERENCES building(building_id)
);

DROP TABLE IF EXISTS classroom_course;
CREATE TABLE classroom_course(
	classroom_course_id INTEGER AUTO_INCREMENT,
    classroom_id INTEGER NOT NULL,
    course_id INTEGER NOT NULL,
    PRIMARY KEY (classroom_course_id),
    FOREIGN KEY (classroom_id) REFERENCES classroom(classroom_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

DROP TABLE IF EXISTS degree_type;
CREATE TABLE degree_type (
	degree_type_id INTEGER AUTO_INCREMENT,
    degree_type VARCHAR(255) NOT NULL,
    PRIMARY KEY (degree_type_id)
);

DROP TABLE IF EXISTS degree;
CREATE TABLE degree (
	degree_id INTEGER AUTO_INCREMENT,
    department_id INTEGER NOT NULL,
    degree_type_id INTEGER NOT NULL,
    degree_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (degree_id),
    FOREIGN KEY (department_id) REFERENCES department(department_id),
    FOREIGN KEY (degree_type_id) REFERENCES degree_type(degree_type_id)
);