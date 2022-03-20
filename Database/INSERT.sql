
SELECT * FROM faculty;
INSERT INTO faculty ( faculty_name)
VALUES ("Faculty of Economic");
INSERT INTO faculty (faculty_name)
VALUE ("Faculty of Education");
INSERT INTO faculty (faculty_name)
VALUE ("Faculty of Engineering");
INSERT INTO faculty (faculty_name)
VALUE ("Faculty of Infromation Technology");
INSERT INTO faculty (faculty_name)
VALUE ("Faculty of Medicine");
INSERT INTO faculty (faculty_name)
VALUE ("Faculty of Law");
INSERT INTO faculty (faculty_name)
VALUE ("Faculty of Science");
 
SELECT * FROM department;
INSERT INTO department(faculty_id, department_name)
VALUE ("1", "Department of Finance and Accounting");
INSERT INTO department(faculty_id, department_name)
VALUE ("1", "Department of Marketing");
INSERT INTO department(faculty_id, department_name)
VALUE ("1", "Department of MacroEconomic");
INSERT INTO department(faculty_id, department_name)
VALUE ("1", "Department of Organizatinal Infromation Systems");
INSERT INTO department (faculty_id, department_name)
VALUE ("2", "Department of Social Pedagogy");
INSERT INTO department(faculty_id, department_name)
VALUES("2", "Department of Biology");
INSERT INTO department(faculty_id, department_name)
VALUE ("2", "Department of Physics and Technical Studies");
INSERT INTO department(faculty_id, department_name)
VALUE ("2", "Department of Preschool Education");
INSERT INTO department(faculty_id, department_name)
VALUE ("2", "Department of Preschool Education");
INSERT INTO department(faculty_id, department_name)
VALUE ("3", "Department of Bioengineering" );
INSERT INTO department(faculty_id, department_name)
VALUE ("3", "Department of Civil Engineering" );
INSERT INTO department(faculty_id, department_name)
VALUE ("3", "Department of Electrical & Computer Engineering" );
INSERT INTO department(faculty_id, department_name)
VALUE ("4", "Department of Computer Science");
INSERT INTO department(faculty_id, department_name)
VALUE ("4", "Department of System and Computer Network" );
INSERT INTO department(faculty_id, department_name)
VALUE ("4", "Department of Telecomunication" );
INSERT INTO department(faculty_id, department_name)
VALUE ("5", "Department of Anesthesiology");
INSERT INTO department(faculty_id, department_name)
VALUE ("5", "Department of Surgery");
INSERT INTO department(faculty_id, department_name)
VALUE ("5", "Department of Medical Molecular");
INSERT INTO department(faculty_id, department_name)
VALUE ("5","Department of Pediatrics");
INSERT INTO department(faculty_id, department_name)
VALUE ("5", "Department of Radiology");
INSERT INTO department(faculty_id, department_name)
VALUE ("6", "Department of Commercial Law" );
INSERT INTO department(faculty_id, department_name)
VALUE ("6", "Department of Public Law");
INSERT INTO department(faculty_id, department_name)
VALUE ("6", "Department of Private Law" );
INSERT INTO department(faculty_id, department_name)
VALUE ("7", "Department of Biology and Biochemistry");
INSERT INTO department(faculty_id, department_name)
VALUE ("7", "Department of Pharmacy and Pharmacology");
INSERT INTO department(faculty_id, department_name)
VALUE ("7", "Department of Biochemistry Microbiology and Bioinformatics");

SELECT * FROM role;
INSERT INTO role (role_type)
VALUE ("student" );
INSERT INTO role (role_type)
VALUE ("employee" );

SELECT * FROM gender;
INSERT INTO gender (gender)
VALUE ("Female");
INSERT INTO gender (gender)
VALUE ("Male");
INSERT INTO gender (gender)
VALUE ("Genderfluid");
INSERT INTO gender (gender)
VALUE ("Polygender");
INSERT INTO gender (gender)
VALUE ("Genderqueer");
INSERT INTO gender (gender)
VALUE ("Agender");
INSERT INTO gender (gender)
VALUE ("Non-binary");
INSERT INTO gender (gender)
VALUE ("Bigender");

SELECT * FROM user;
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("1", "1", "mledley7@chicagotribune.com", "myloledley", "2UPjwLEVcM", "Mylo", "Ledley", "2000/09/03", "American");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("1", "1", "mengledow8@aboutads.info", "michaellaenledow","bdEV1NAI7j", "Michaella", "Engledow", "1999/08/10", "Polish");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("1", "1", "ngalsworthy9@cbslocal.com","nadinegalsworthy", "dLy51UVDeasa", "Nadine", "Galsworthy", "2001/09/16", "American");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("1", "2","cbeneditoa@smh.com.au","claudettabenedito" ,"T010qqeKMVe", "Claudetta", "Benedito", "2000/02/06", "German");
insert into user (role_id, gender_id, email_address, username ,password, first_name, last_name, birth_of_date, nationality) 
values ("1", "2","awoodyearb@friendfeed.com","alistairwoodyear", "OjGeptxVH", "Alistair", "Woodyear", "1998/06/07", "Dutch");
insert into user (role_id, gender_id, email_address,username, password, first_name, last_name, birth_of_date, nationality) 
values ("1","7","gbeninic@cornell.edu", "germanabenini","MrS8KHjqE2t", "Germana", "Benini", "1998/05/22", "German");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("1", "1","dlawrinsond@cnet.com","daralawrinson", "xoOUnfdN5", "Dara", "Lawrinson", "1999/09/21","Polish");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("1", "8", "hfildee@live.com","huseinfilde" ,"fqESbBXy", "Husein", "Filde", "2000/08/15", "American");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("1", "1", 'kcoughlanf@chicagotribune.com',"kimberleecoughlan" ,'tr2k7JOHNYcv', 'Kimberlee', 'Coughlan', "2000/02/26", "American");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("1","2", "jmeneelyg@rakuten.co.jp", "jeddymeneely", "0e4g8F", "Jeddy", "Meneely", "1997/04/28", "Polish");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("1", "7","cinsworthh@indiegogo.com","candisinsworth" ,"QsiKidGjrq", "Candis", "Insworth", "1999/02/02", "Polish");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("1","2","chuggensi@list-manage.com","corneliahuggens", "5MGgLru", "Cornelia", "Huggens", "2000/01/23","American");
insert into user (role_id, gender_id, email_address, username,password, first_name, last_name, birth_of_date, nationality) 
values ("1","2","danthillj@google.com.au","darrickanthill", "ARWf0O", "Darrick", "Anthill", "1997/11/12","German");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("1","1","cpignonk@mapy.cz", "carolinepignon", "IkQsRuZuAA", "Caroline", "Pignon", "1999/05/09","Polish");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("1","4","nrenvoysl@businesswire.com","northruprenvoys", "yRGFdkH", "Northrup", "Renvoys", "1998/07/18", "American");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("1","1", "cdorricottm@seesaa.net","chaddydorricott", "OghotAuV", "Chaddy", "Dorricott", "2000/07/18", "American");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("1", "2","inilandn@com.com", "isadorniland", "fLVW4U", "Isador", "Niland", "2000/04/04", "Dutch");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("1", "1","aarenso@exblog.jp", "albertinaarens", "YThjxLdO", "Albertina", "Arens", "1999/06/30","Dutch");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("1", "1", "rlomasnyp@cafepress.com", "rhondalomasny", "8Zbdf0", "Rhonda", "Lomasny", "2001/11/01", "Polish");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("1","1","bcorsorq@eepurl.com", "brifgettecorsor", "DBFL0R", "Bridgette", "Corsor", "2000/08/11", "American");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("1", "2","yculpanr@nyu.edu", "yovonndaculpan", "eVbiIKjQZm", "Yovonnda", "Culpan", "1999/05/18", "Polish");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("2","2", "acallaghans@unicef.org","alandcallaghan", "RHrSS76", "Aland", "Callaghan", "1969/03/25", "Polish");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("2","2", "bcottemt@constantcontact.com","broddiecottem", "ZMIiP0aY6eMZ", "Broddie", "Cottem", "1971/10/07", "Polish");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("2","1", "ntieraneyu@phoca.cz", "nertetieraney", "EIQSG8X8V7fG", "Nerte", "Tieraney", "1968/05/16", "American");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("2","2","yyoslowitzv@yandex.ru", "ynezyoslowitz", "QBkFuaY", "Ynez", "Yoslowitz", "1975/03/05", "German");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("2","2","jrudolfw@cafepress.com", "jacoborudolf", "kdL7gHj", "Jacobo", "Rudolf","1971/07/01", "Polish");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("2", "1","ckeppinx@rambler.ru","curriekeppin", "MXVvpv32", "Currie", "Keppin", "1970/10/14", "German");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("2","2", "tearlandy@surveymonkey.com", "trudieearland", "L6Lw3i809", "Trudie", "Earland", "1965/02/09", "Polish");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("2","1", "ahausez@msu.edu", "ailahause", "b1C0IT", "Aila", "Hause", "1978/03/17", "German");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("2", "1", "ibrashaw10@weebly.com", "idalinebrashaw", "7iUw9wX", "Idaline", "Brashaw", "1967/11/07", "American");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("2","1", "vhuebner11@ed.gov", "valaree", "IXDYe5EKQkT3", "Valaree", "Huebner", "1970/12/18", "German");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("2", "1", "tmincher12@mail.ru", "taramincher", "2xc7wF30", "Tara", "Mincher", "1973/01/11", "Polish");
insert into user (role_id, gender_id, email_address, username, password, first_name, last_name, birth_of_date, nationality) 
values ("2","2","rdorsey13@imageshack.us", "ranselldorsey", "zkqoMrxYxE2", "Ransell", "Dorsey", "1970/08/14","Dutch");

SELECT * FROM `position`;
insert into `position` (position_name, description)
value ("Cordinator", "Responsible to a Dean or other appropriate administrator of a State university. Responsible for coordinating the academic and/or administrative activities of an academic program or unit");
insert into `position` (position_name, description)
value ("Deans", "Responsible to  administrative policy and procedures, physical plant and fiscal management, student services, residence education and professional/paraprofessional staff management.");
insert into `position` (position_name, description)
value ("Administrator","Responsible for the administration of a designated program, project or function within the University Advancement department including");
insert into `position` (position_name, description)
value ("Office Manager", "Responsible for the operational aspects of academic, fiscal, purchasing, employment and payroll administration for a USF organizational unit, such as a college, school, or department. Supervises assigned support staff in the office.");
insert into `position` (position_name, description)
value ("Teacher", "Responsible to a Chair or other appropriate administrator of a State university. Responsible for teaching, research, service, and related administrative activities. Responsible for academic advising.");

SELECT * FROM employee;
insert into employee (user_id, faculty_id, position_id, is_administrator)
value ("22", "4", "3", "YES");
insert into employee (user_id, faculty_id, position_id, is_administrator)
value ("23", "5", "3", "YES");
insert into employee (user_id, faculty_id, position_id, is_administrator)
value("24", "4", "2", "NO");
insert into employee (user_id, faculty_id, position_id, is_administrator)
value("25", "1", "2", "NO");
insert into employee (user_id, faculty_id, position_id, is_administrator)
value("26", "4", "1","NO");
insert into employee (user_id, faculty_id, position_id, is_administrator)
value("27", "2", "4", "NO");
insert into employee (user_id, faculty_id, position_id, is_administrator)
value("28", "3", "5", "NO");
insert into employee (user_id, faculty_id, position_id, is_administrator)
value ("29","4", "5", "NO");
insert into employee (user_id, faculty_id, position_id, is_administrator)
value ("30","5","5","NO");
insert into employee (user_id, faculty_id, position_id, is_administrator)
value ("31", "6", "5","NO");
insert into employee (user_id, faculty_id, position_id, is_administrator)
value ("32", "7", "5","NO");
insert into employee (user_id, faculty_id, position_id, is_administrator)
value ("33", "1", "5", "NO");

SELECT * FROM student;
insert into student (user_id, semester, academic_year)
value ("1", "2", "2020");
insert into student (user_id, semester, academic_year)
value("2", "2" ,"2020");
insert into student (user_id, semester, academic_year)
value("3", "1", "2021");
insert into student (user_id, semester, academic_year)
value("4", "1", "2021");
insert into student (user_id, semester, academic_year)
value("5", "3", "2020");
insert into student (user_id, semester, academic_year)
value("6", "4","2019");
insert into student (user_id, semester, academic_year)
value("7", "5", "2019");
insert into student (user_id, semester, academic_year)
value("8", "3","2020");
insert into student (user_id, semester, academic_year)
value("9", "3", "2020");
insert into student (user_id, semester, academic_year)
value("10", "5", "2019");
insert into student (user_id, semester, academic_year)
value("11", "5", "2019");
insert into student (user_id, semester, academic_year)
value("12", "5", "2019");
insert into student (user_id, semester, academic_year)
value("13", "1", "2021");
insert into student (user_id, semester, academic_year)
value("14", "2","2020");
insert into student (user_id, semester, academic_year)
value("15", "4", "2019");
insert into student (user_id, semester, academic_year)
value("16", "6","2018");
insert into student (user_id, semester, academic_year)
value("17","6","2018");
insert into student (user_id, semester, academic_year)
value("18", "5", "2019");
insert into student (user_id, semester, academic_year)
value("19", "2", "2020");
insert into student (user_id, semester, academic_year)
value("20", "3", "2020");
insert into student (user_id, semester, academic_year)
value("21", "5", "2019");

SELECT * FROM teacher;
insert into teacher (employee_id)
value("7");
insert into teacher (employee_id)
value("8");
insert into teacher (employee_id)
value("9");
insert into teacher (employee_id)
value("10");
insert into teacher (employee_id)
value("11");
insert into teacher (employee_id)
value("12");


SELECT * FROM course_type;
insert into course_type (course_type, course_duration)
value ("Lecture", "02:00:00");
insert into course_type (course_type, course_duration)
value ("Laboratory", "01:30:00");
insert into course_type (course_type, course_duration)
value ("Project", "01:30:00");
insert into course_type (course_type, course_duration)
value ("Tutorial", "01:30:00");

SELECT * FROM course_mode;
insert into course_mode (course_mode)
value ("Online");
insert into course_mode (course_mode)
value ("Stationary");
insert into course_mode (course_mode)
value ("Hybrid");

SELECT * FROM academic_details;
insert into academic_details (academic_semester, semester_number, academic_year, year_of_study)
value ("Winter","5", "2021", "3");
insert into academic_details (academic_semester, semester_number, academic_year, year_of_study)
value ("Summer", "4", "2022", "2");
insert into academic_details (academic_semester, semester_number, academic_year, year_of_study)
value ("Winter", "1", "2021", "1");
insert into academic_details (academic_semester, semester_number, academic_year, year_of_study)
value ("Winter", "3", "2021", "2");
insert into academic_details (academic_semester, semester_number, academic_year, year_of_study)
value ("Summer", "6", "2022", "3");
insert into academic_details (academic_semester, semester_number, academic_year, year_of_study)
value ("Summer", "2", "2022", "1");  

SELECT * FROM course;
insert into course (department_id, course_type_id, course_mode_id, academic_details_id, employee_id, course_name, course_start_time, course_end_time, total_hours, course_credits, course_start_date, course_end_date, course_day)
value (13, 1, 1, 1, 1, 'Software Engineering', '09:15:00', '11:00:00', 60, 3, '2021-10-05', '2022-02-08', 'Tuesday');
insert into course (department_id, course_type_id, course_mode_id, academic_details_id, employee_id, course_name, course_start_time, course_end_time, total_hours, course_credits, course_start_date, course_end_date, course_day)       
value (13, 2, 2, 1, 1, 'Software Engineering ', '13:15:00', '15:00:00', 60, 2, '2021-10-08', '2022-02-11', 'Friday');
insert into course (department_id, course_type_id, course_mode_id, academic_details_id, employee_id, course_name, course_start_time, course_end_time, total_hours, course_credits, course_start_date, course_end_date, course_day)
value (13, 4, 2, 1, 1, 'Software Engineering', '09:15:00', '11:00:00', 30, 2, '2021-10-04', '2022-02-07', 'Monday');
insert into course (department_id, course_type_id, course_mode_id, academic_details_id, employee_id, course_name, course_start_time, course_end_time, total_hours, course_credits, course_start_date, course_end_date, course_day)        
value (11, 1, 1, 4, 2, 'Construction Project Management', '07:30:00', '09:00:00', 60, 4, '2021-10-04', '2022-02-07', 'Monday');
insert into course (department_id, course_type_id, course_mode_id, academic_details_id, employee_id, course_name, course_start_time, course_end_time, total_hours, course_credits, course_start_date, course_end_date, course_day)        
value (11, 3, 2, 4, 2, 'Construction Project Management', '15:15:00', '17:00:00', 30, 3, '2021-10-04', '2022-02-07', 'Monday');
insert into course (department_id, course_type_id, course_mode_id, academic_details_id, employee_id, course_name, course_start_time, course_end_time, total_hours, course_credits, course_start_date, course_end_date, course_day)        
value (13, 1, 1, 1, 1, 'Database System Engineering', '18:55:00', '20:00:00', 60, 4, '2021-10-07', '2022-02-10', 'Thursday');
insert into course (department_id, course_type_id, course_mode_id, academic_details_id, employee_id, course_name, course_start_time, course_end_time, total_hours, course_credits, course_start_date, course_end_date, course_day)       
value (13, 3, 2, 1, 1, 'Database System Engineering', '15:15:00', '17:00:00', 60, 3, '2021-10-06', '2022-02-09', 'Wednesday');
insert into course (department_id, course_type_id, course_mode_id, academic_details_id, employee_id, course_name, course_start_time, course_end_time, total_hours, course_credits, course_start_date, course_end_date, course_day)        
value (13, 1, 1, 4, 1, 'Computer Networks', '07:30:00', '09:00:00', 30, 3, '2021-10-05', '2022-02-08', 'Tuesday');
insert into course (department_id, course_type_id, course_mode_id, academic_details_id, employee_id, course_name, course_start_time, course_end_time, total_hours, course_credits, course_start_date, course_end_date, course_day)        
value (13, 2, 2, 4, 1, 'Computer Networks', '11:15:00', '13:00:00', 60, 2, '2021-10-05', '2022-02-08', 'Tuesday');
insert into course (department_id, course_type_id, course_mode_id, academic_details_id, employee_id, course_name, course_start_time, course_end_time, total_hours, course_credits, course_start_date, course_end_date, course_day)        
value (13, 4, 2, 4, 1, 'Computer Networks', '17:05:00', '18:45:00', 60, 2, '2021-10-08', '2022-02-11', 'Friday');

SELECT * FROM student_course;
insert into student_course ( student_course_id, student_id, course_id)
value ("1", "7", "1");
insert into student_course ( student_course_id, student_id, course_id)
value ("2", "7", "2");
insert into student_course ( student_course_id, student_id, course_id)
value ("3", "7", "3");
insert into student_course ( student_course_id, student_id, course_id)
value ("4", "5", "4");
insert into student_course ( student_course_id, student_id, course_id)
value ("5", "5", "5");
insert into student_course ( student_course_id, student_id, course_id)
value ("6", "8", "4");
insert into student_course ( student_course_id, student_id, course_id)
value ("7", "8", "5");
insert into student_course ( student_course_id, student_id, course_id)
value ("8", "9", "8");
insert into student_course ( student_course_id, student_id, course_id)
value ("9", "9", "9");
insert into student_course ( student_course_id, student_id, course_id)
value ("10", "9", "10");
insert into student_course ( student_course_id, student_id, course_id)
value ("11", "20", "8");
insert into student_course ( student_course_id, student_id, course_id)
value ("12", "20", "9");
insert into student_course ( student_course_id, student_id, course_id)
value ("13", "20", "10");
insert into student_course ( student_course_id, student_id, course_id)
value ("14", "7", "6");
insert into student_course ( student_course_id, student_id, course_id)
value ("15", "7", "7");
insert into student_course ( student_course_id, student_id, course_id)
value ("16", "10", "1");
insert into student_course ( student_course_id, student_id, course_id)
value ("17", "10", "2");
insert into student_course ( student_course_id, student_id, course_id)
value ("18", "10", "3");
insert into student_course ( student_course_id, student_id, course_id)
value ("19", "10", "6");
insert into student_course ( student_course_id, student_id, course_id)
value ("20", "10", "7");
insert into student_course ( student_course_id, student_id, course_id)
value ("21", "11", "1");
insert into student_course ( student_course_id, student_id, course_id)
value ("22", "11", "2");
insert into student_course ( student_course_id, student_id, course_id)
value ("23", "11", "3");
insert into student_course ( student_course_id, student_id, course_id)
value ("24", "11","6");
insert into student_course ( student_course_id, student_id, course_id)
value ("25", "11", "7");
insert into student_course ( student_course_id, student_id, course_id)
value ("26", "12", "1");
insert into student_course ( student_course_id, student_id, course_id)
value ("27", "12", "2");
insert into student_course ( student_course_id, student_id, course_id)
value ("28", "12", "3");
insert into student_course ( student_course_id, student_id, course_id)
value ("29", "12", "6");
insert into student_course ( student_course_id, student_id, course_id)
value ("30", "12", "7");
insert into student_course ( student_course_id, student_id, course_id)
value ("31", "18", "1");
insert into student_course ( student_course_id, student_id, course_id)
value ("32", "18", "2");
insert into student_course ( student_course_id, student_id, course_id)
value ("33", "18", "3");
insert into student_course ( student_course_id, student_id, course_id)
value ("34", "18", "6");
insert into student_course ( student_course_id, student_id, course_id)
value ("35", "18", "7");
insert into student_course ( student_course_id, student_id, course_id)
value ("36", "21", "1");
insert into student_course ( student_course_id, student_id, course_id)
value ("37", "21", "2");
insert into student_course ( student_course_id, student_id, course_id)
value ("38", "21", "3");
insert into student_course ( student_course_id, student_id, course_id)
value ("39", "21", "6");
insert into student_course ( student_course_id, student_id, course_id)
value ("40", "21", "7");

SELECT * FROM teacher_course;
insert into teacher_course ( teacher_course_id, course_id, teacher_id)
value ("1", "1", "1");
insert into teacher_course ( teacher_course_id, course_id, teacher_id)
value ("2", "2", "1");
insert into teacher_course ( teacher_course_id, course_id, teacher_id)
value ("3", "3", "2");
insert into teacher_course ( teacher_course_id, course_id, teacher_id)
value ("4", "4", "3");
insert into teacher_course ( teacher_course_id, course_id, teacher_id)
value ("5", "5", "3");
insert into teacher_course ( teacher_course_id, course_id, teacher_id)
value ("6", "6", "4");
insert into teacher_course ( teacher_course_id, course_id, teacher_id)
value ("7", "7", "2");
insert into teacher_course ( teacher_course_id, course_id, teacher_id)
value ("8", "8", "5");
insert into teacher_course ( teacher_course_id, course_id, teacher_id)
value ("9", "9", "6");
insert into teacher_course ( teacher_course_id, course_id, teacher_id)
value ("10", "10", "6");

SELECT * FROM mode_online;
insert into mode_online (meeting_link, password)
value ("m3tt1ngL1nk@c0ur53!!", "9907689");
insert into mode_online (meeting_link, password)
value ("C0urs3!!-33m3tt1n971nk", "45389912");
insert into mode_online (meeting_link, password)
value ("80de_@c0urs371nk#m3tt1n9", "124536799");
insert into mode_online (meeting_link, password)
value ("z00t[c0rw3L1NNk-m34tting!", "345367587");
insert into mode_online (meeting_link, password)
value ("cl455@0n11n3@m3tt1n9", "342516478");
insert into mode_online (meeting_link, password)
value ("m@nt0b3/cl1550nl11n23!", "90876428");

SELECT * FROM address;
insert into address (street_name, street_number, post_code, city) 
value ('Jenna', '44', 80302, 'Golbey');
insert into address (street_name, street_number, post_code, city) 
value ('Jenna', '46', '80302', 'Golbey');
insert into address (street_name, street_number, post_code, city) 
value ('Jenna', '50', 80302, 'Golbey');
insert into address (street_name, street_number, post_code, city) 
value ('Evergreen', '12', '80301', 'Golbey');
insert into address (street_name, street_number, post_code, city) 
value ('Evergreen', '15', '80301', 'Golbey');

SELECT * FROM building;
insert into building (address_id, building_name, building_number)
value ("1", "Budynek C", "5");
insert into building (address_id, building_name, building_number)
value ("2", "Budynek E", "1");
insert into building (address_id, building_name, building_number)
value ("2", "Budynek E", "4");
insert into building (address_id, building_name, building_number)
value ("4", "Budynek K", "1");
insert into building (address_id, building_name, building_number)
value ("4", "Budynek K", "2");

SELECT * FROM classroom;
insert into classroom (building_id, room_number, floor)
value ("1", "101","1");
insert into classroom (building_id, room_number, floor)
value ("1", "333", "3");
insert into classroom (building_id, room_number, floor)
value ("2", "205", "2");
insert into classroom (building_id, room_number, floor)
value ("2", "309", "3");
insert into classroom (building_id, room_number, floor)
value ("3", "120", "2");
insert into classroom (building_id, room_number, floor)
value ("4", "202", "2");
insert into classroom (building_id, room_number, floor)
value ("4", "110", "1" );
insert into classroom (building_id, room_number, floor)
value ("4", "101", "1");
insert into classroom (building_id, room_number, floor)
value ("5", "305", "3");
insert into classroom (building_id, room_number, floor)
value ("5", "319", "3");

SELECT * FROM classroom_course;
insert into classroom_course (classroom_course_id, classroom_id, course_id)
value ("1", "1", "1");
insert into classroom_course (classroom_course_id, classroom_id, course_id)
value ("2", "1", "2");
insert into classroom_course (classroom_course_id, classroom_id, course_id)
value ("3", "2", "3");
insert into classroom_course (classroom_course_id, classroom_id, course_id)
value ("4", "3", "4");
insert into classroom_course (classroom_course_id, classroom_id, course_id)
value ("5","4", "5");
insert into classroom_course (classroom_course_id, classroom_id, course_id)
value ("6", "6", "6");
insert into classroom_course (classroom_course_id, classroom_id, course_id)
value ("7", "6", "7");
insert into classroom_course (classroom_course_id, classroom_id, course_id)
value ("8", "8", "8");
insert into classroom_course (classroom_course_id, classroom_id, course_id)
value ("9", "9", "9");
insert into classroom_course (classroom_course_id, classroom_id, course_id)
value ("10","9", "10");

SELECT * FROM student_department;
insert into student_department (student_department_id, student_id, department_id)
value ("1", "7", "13");
insert into student_department (student_department_id, student_id, department_id)
value ("2","10","13");
insert into student_department (student_department_id, student_id, department_id)
value ("3","11","13");
insert into student_department (student_department_id, student_id, department_id)
value ("4","12","13");
insert into student_department (student_department_id, student_id, department_id)
value ("5", "18", "13");
insert into student_department (student_department_id, student_id, department_id)
value ("6", "21", "13");
insert into student_department (student_department_id, student_id, department_id)
value ("7", "9", "13");
insert into student_department (student_department_id, student_id, department_id)
value ("8", "9", "14");
insert into student_department (student_department_id, student_id, department_id)
value ("9", "20", "13");
insert into student_department (student_department_id, student_id, department_id)
value ("10", "20", "14");
insert into student_department (student_department_id, student_id, department_id)
value ("11", "5", "11");
insert into student_department (student_department_id, student_id, department_id)
value ("12", "8", "11");
insert into student_department (student_department_id, student_id, department_id)
value ("13", "6", "21");
insert into student_department (student_department_id, student_id, department_id)
value ("14", "6", "22");
insert into student_department (student_department_id, student_id, department_id)
value ("15", "15", "21" );
insert into student_department (student_department_id, student_id, department_id)
value ("16", "15", "22");
insert into student_department (student_department_id, student_id, department_id)
value ("17", "16", "2");
insert into student_department (student_department_id, student_id, department_id)
value (18, 16, 2);
insert into student_department (student_department_id, student_id, department_id)
value (19, 17, 2);
insert into student_department (student_department_id, student_id, department_id)
value (20, 1, 16);
insert into student_department (student_department_id, student_id, department_id)
value (21, 2, 16);
insert into student_department (student_department_id, student_id, department_id)
value (22, 3, 20);
insert into student_department (student_department_id, student_id, department_id)
value (23, 4, 20);
insert into student_department (student_department_id, student_id, department_id)
value (24, 14, 20);
insert into student_department (student_department_id, student_id, department_id)
value (25, 13, 17);
insert into student_department (student_department_id, student_id, department_id)
value (26, 19, 17);

SELECT * FROM mode_stationary;
insert into mode_stationary (classroom_id)
value (1);
insert into mode_stationary (classroom_id)
value (2);
insert into mode_stationary (classroom_id)
value (4);
insert into mode_stationary (classroom_id)
value (6);
insert into mode_stationary (classroom_id)
value (9);
insert into mode_stationary (classroom_id)
value (9);

SELECT * FROM course_final_location;
insert into course_final_location (course_id, mode_online_id, mode_stationary_id)
value (1, 1, NULL);
insert into course_final_location (course_id, mode_online_id, mode_stationary_id)
value (2, NULL, 1);
insert into course_final_location (course_id, mode_online_id, mode_stationary_id)
value (3, NULL, 2);
insert into course_final_location (course_id, mode_online_id, mode_stationary_id)
value (4, 2, NULL);
insert into course_final_location (course_id, mode_online_id, mode_stationary_id)
value (5, NULL, 3);
insert into course_final_location (course_id, mode_online_id, mode_stationary_id)
value (6, 3, NULL);
insert into course_final_location (course_id, mode_online_id, mode_stationary_id)
value (7, NULL, 4 );
insert into course_final_location (course_id, mode_online_id, mode_stationary_id)
value (8, 4, NULL);
insert into course_final_location (course_id, mode_online_id, mode_stationary_id)
value (9, NULL, 5);
insert into course_final_location (course_id, mode_online_id, mode_stationary_id)
value (10, NULL, 6);

SELECT * FROM degree_type;
insert into degree_type(degree_type)
value("Bachelor's degree");
insert into degree_type(degree_type)
value("Master's degree");
insert into degree_type(degree_type)
value("Doctoral degree");

SELECT * FROM degree;
insert into degree (department_id, degree_type_id, degree_name)
value (1, 1, "Bachelor of Economics");
insert into degree (department_id, degree_type_id, degree_name)
value (2, 1, "Bachelor of Economics");
insert into degree (department_id, degree_type_id, degree_name)
value (3, 1, "Bachelor of Applied Economics ");
insert into degree (department_id, degree_type_id, degree_name)
value (4, 1, "Bachelor of Applied Economics");
insert into degree (department_id, degree_type_id, degree_name)
value (5, 1,"Bachelor of Education");
insert into degree (department_id, degree_type_id, degree_name)
value (6, 1, "Bachelor of Science in Education");
insert into degree (department_id, degree_type_id, degree_name)
value (7, 1, "Bachelor of Education");
insert into degree (department_id, degree_type_id, degree_name)
value (8, 1, "Bachelor of Education");
insert into degree (department_id, degree_type_id, degree_name)
value (9, 1, "Bachelor of Education");
insert into degree (department_id, degree_type_id, degree_name)
value (10, 1, "Bachelor of Engineering");
insert into degree (department_id, degree_type_id, degree_name)
value (11, 1, "Bachelor of Civil Engineering");
insert into degree (department_id, degree_type_id, degree_name)
value (12, 1, "Bachelor of Computer Engineering");
insert into degree (department_id, degree_type_id, degree_name)
value (13, 1, "Bachelor of Computer Science");
insert into degree (department_id, degree_type_id, degree_name)
value (14, 1,"Bachelor of Computer Science");
insert into degree (department_id, degree_type_id, degree_name)
value (15, 1, "Bachelor of Computer Science");
insert into degree (department_id, degree_type_id, degree_name)
value (16, 1, "Bachelor of Medicine");
insert into degree (department_id, degree_type_id, degree_name)
value (17, 1, "Bachelor of Surgery");
insert into degree (department_id, degree_type_id, degree_name)
value (18, 1, "Bachelor of Medicine");
insert into degree (department_id, degree_type_id, degree_name)
value (19, 1, "Bachelor of Medicine");
insert into degree (department_id, degree_type_id, degree_name)
value (20, 1,"Bachelor of Medicine");
insert into degree (department_id, degree_type_id, degree_name)
value (21, 1, "Bachelor of Law");
insert into degree (department_id, degree_type_id, degree_name)
value (22, 1, "Bachelor of Law" );
insert into degree (department_id, degree_type_id, degree_name)
value (23, 1, "Bachelor of Law");
insert into degree (department_id, degree_type_id, degree_name)
value (24, 1, "Bachelor of Science");
insert into degree (department_id, degree_type_id, degree_name)
value (25, 1, "Bachelor of Pharmacy");
insert into degree (department_id, degree_type_id, degree_name)
value (26, 1, "Bachelor of Science");