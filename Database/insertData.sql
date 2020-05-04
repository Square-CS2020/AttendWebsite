/*Students*/

insert into student(std_ID, Fname, Lname, Sex, Senority)
value('870492629',"Charles", "Samuel", 'M', "Senior");

insert into student(std_ID, Fname, Lname, Sex, Senority)
value('870444666',"Mike", "Pool", 'M', "Freshmen");

insert into student(std_ID, Fname, Lname, Sex, Senority)
value('870869111',"Tim", "Agin", 'M', "Senior");

insert into student(std_ID, Fname, Lname, Sex, Senority)
value('870555888',"Sally", "Temp", 'F', "Sophmore");

insert into student(std_ID, Fname, Lname, Sex, Senority)
value('870111222',"Ayn", "Rand", 'F', "Junior");

insert into student(std_ID, Fname, Lname, Sex, Senority)
value('870888999',"Carly", "JIm", 'F', "Sophmore");

insert into student(std_ID, Fname, Lname, Sex, Senority)
value('870333555',"K-Map", "T", 'O', "Senior");


/*Instructors*/
insert into instructor(Ins_ID, Fname, Lname)
value('8',"JarJar", "Purks");

insert into instructor(Ins_ID, Fname, Lname)
value('2',"David", "Chump");

insert into instructor(Ins_ID, Fname, Lname)
value('1',"Charles", "Barkley");

insert into instructor(Ins_ID, Fname, Lname)
value('5',"Thames", "T"); 


/*Cources*/

insert into course(Class_ID, Class_Name, Dept, Cource_Number, hours, Semester, Sem_year, Start_date, End_date)
value('11111',"Principle of Programming I", "CS", '1301', 3, 'Spring', '2020', '2020-01-13', '2020-05-04');

insert into course(Class_ID, Class_Name, Dept, Cource_Number, hours, Semester, Sem_year, Start_date, End_date)
value('22222',"Principle of Programming II", "CS", '1302', 3, 'Spring', '2020', '2020-01-13', '2020-05-04');

insert into course(Class_ID, Class_Name, Dept, Cource_Number, hours, Semester, Sem_year, Start_date, End_date)
value('33333',"Statistics", "MATH", '3600', 4, 'Summer', '2020', '2020-05-11', '2020-06-04');

insert into course(Class_ID, Class_Name, Dept, Cource_Number, hours, Semester, Sem_year, Start_date, End_date)
value('44444',"Literature", "LANG", '1101', 4, 'Summer', '2020', '2020-05-11', '2020-06-04');

insert into course(Class_ID, Class_Name, Dept, Cource_Number, hours, Semester, Sem_year, Start_date, End_date)
value('55555',"Walking", "KSPE", '2001', 3, 'Spring', '2020', '2020-01-13', '2020-05-04');

insert into course(Class_ID, Class_Name, Dept, Cource_Number, hours, Semester, Sem_year, Start_date, End_date)
value('66666',"History of Religion", "RESH", '1002', 3, 'Summer', '2020', '2020-06-11', '2020-07-31'); 


/*Course_Sections*/

insert into Course_Section(Class_ID, Section, DOW, Ins_ID)
value('55555','A','MWF', '5');

insert into Course_Section(Class_ID, Section, DOW, Ins_ID)
value('55555','B','MWF', '5');

insert into Course_Section(Class_ID, Section, DOW, Ins_ID)
value('11111','A','MWF', '1');

insert into Course_Section(Class_ID, Section, DOW, Ins_ID)
value('11111','B','TR', '1');

insert into Course_Section(Class_ID, Section, DOW, Ins_ID)
value('66666','A','MWF', '1');

insert into Course_Section(Class_ID, Section, DOW, Ins_ID)
value('22222','A','MWF', '8');

insert into Course_Section(Class_ID, Section, DOW, Ins_ID)
value('22222','B','TR', '8');

insert into Course_Section(Class_ID, Section, DOW, Ins_ID)
value('33333','A','MWF', '5');

insert into Course_Section(Class_ID, Section, DOW, Ins_ID)
value('44444','A','TR', '2');


/*Class_Session*/

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('11111','A','2020-01-13', '10:00:00', '10:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('11111','B','2020-01-13', '1:00:00', '1:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('22222','A','2020-01-13', '3:00:00', '3:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('22222','B','2020-01-13', '10:00:00', '10:50:00', 'n');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('33333','A','2020-01-13', '1:00:00', '2:15:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('44444','A','2020-01-13', '4:00:00', '5:15:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('55555','A','2020-01-13', '11:00:00', '11:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('55555','B','2020-01-13', '2:00:00', '2:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('66666','A','2020-01-13', '2:30:00', '3:30:00', 'n'); 


/*Student Enrollment*/

insert into Enroll(Std_ID, Class_ID, Section)
value('870444666', '11111', 'A');

insert into Enroll(Std_ID, Class_ID, Section)
value('870444666', '22222', 'A');

insert into Enroll(Std_ID, Class_ID, Section)
value('870444666', '33333', 'A');

insert into Enroll(Std_ID, Class_ID, Section)
value('870492629', '11111', 'A');

insert into Enroll(Std_ID, Class_ID, Section)
value('870492629', '33333', 'A');

insert into Enroll(Std_ID, Class_ID, Section)
value('870869111', '44444', 'A');

insert into Enroll(Std_ID, Class_ID, Section)
value('870869111', '33333', 'A');

insert into Enroll(Std_ID, Class_ID, Section)
value('870555888', '66666', 'A');

insert into Enroll(Std_ID, Class_ID, Section)
value('870555888', '11111', 'B');

insert into Enroll(Std_ID, Class_ID, Section)
value('870555888', '22222', 'B');

insert into Enroll(Std_ID, Class_ID, Section)
value('870111222', '22222', 'B');

insert into Enroll(Std_ID, Class_ID, Section)
value('870111222', '55555', 'A');

insert into Enroll(Std_ID, Class_ID, Section)
value('870888999', '22222', 'A');

insert into Enroll(Std_ID, Class_ID, Section)
value('870333555', '55555', 'B');

insert into Enroll(Std_ID, Class_ID, Section)
value('870333555', '11111', 'B'); 


/*Teaching*/    

insert into Teach(Std_ID, Ins_ID)
value('870444666', '1');

insert into Teach(Std_ID, Ins_ID)
value('870492629', '1');

insert into Teach(Std_ID, Ins_ID)
value('870555888', '1');

insert into Teach(Std_ID, Ins_ID)
value('870333555', '1');

insert into Teach(Std_ID, Ins_ID)
value('870869111', '2');

insert into Teach(Std_ID, Ins_ID)
value('870111222', '5'); 

insert into Teach(Std_ID, Ins_ID)
value('870333555', '5');

insert into Teach(Std_ID, Ins_ID)
value('870444666', '5');

insert into Teach(Std_ID, Ins_ID)
value('870492629', '5');

insert into Teach(Std_ID, Ins_ID)
value('870869111', '5');

insert into Teach(Std_ID, Ins_ID)
value('870444666', '8');

insert into Teach(Std_ID, Ins_ID)
value('870555888', '8');

insert into Teach(Std_ID, Ins_ID)
value('870111222', '8');

insert into Teach(Std_ID, Ins_ID)
value('870888999', '8');


/*Attendence*/
insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'A', '870444666', '10:03:00', '2020-01-13', 'tardy'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'A', '870444666', '3:00:00', '2020-01-13', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('33333', 'A', '870444666', null, '2020-01-13', 'absent'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('44444', 'A', '870869111', '1:00:00', '2020-01-13', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('33333', 'A', '870869111', '4:15:00', '2020-01-13', 'tardy'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('66666', 'A', '870555888', '2:30:00', '2020-01-13', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'B', '870555888', '1:30:00', '2020-01-13', 'tardy'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'B', '870555888', '10:00:00', '2020-01-13', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'B', '870111222', '10:00:00', '2020-01-13', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('55555', 'B', '870111222', '11:00:00', '2020-01-13', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'A', '870888999', null, '2020-01-13', 'absent'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('55555', 'B', '870333555', null, '2020-01-13', 'absent'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'B', '870333555', null, '2020-01-13', 'absent');  
