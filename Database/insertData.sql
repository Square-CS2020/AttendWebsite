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
value('8',"JarJar", "Picks");

insert into instructor(Ins_ID, Fname, Lname)
value('2',"David", "Chumps");

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
value('33333',"Statistics", "MATH", '3600', 4, 'Sring', '2020', '2020-01-13', '2020-05-04');

insert into course(Class_ID, Class_Name, Dept, Cource_Number, hours, Semester, Sem_year, Start_date, End_date)
value('44444',"Literature", "LANG", '1101', 4, 'Sring', '2020', '2020-01-13', '2020-05-04');

insert into course(Class_ID, Class_Name, Dept, Cource_Number, hours, Semester, Sem_year, Start_date, End_date)
value('55555',"Walking", "KSPE", '2001', 3, 'Spring', '2020', '2020-01-13', '2020-05-04');

insert into course(Class_ID, Class_Name, Dept, Cource_Number, hours, Semester, Sem_year, Start_date, End_date)
value('66666',"History of Religion", "RESH", '1002', 3, 'Spring', '2020', '2020-01-13', '2020-05-04'); 


/*Course_Sections*/

insert into Course_Section(Class_ID, Section, DOW, Time_Before_Tardy, Ins_ID)
value('11111','A','MWF', '00:10:00', '1');

insert into Course_Section(Class_ID, Section, DOW, Time_Before_Tardy, Ins_ID)
value('11111','B','TWR', '00:10:00', '1');

insert into Course_Section(Class_ID, Section, DOW, Time_Before_Tardy, Ins_ID)
value('22222','A','MWF', '00:10:00', '8');

insert into Course_Section(Class_ID, Section, DOW, Time_Before_Tardy, Ins_ID)
value('22222','B','TR', '00:10:00', '8');

insert into Course_Section(Class_ID, Section, DOW, Time_Before_Tardy, Ins_ID)
value('33333','A','MWF', '00:10:00', '5');

insert into Course_Section(Class_ID, Section, DOW, Time_Before_Tardy, Ins_ID)
value('44444','A','R', '00:10:00', '2');

insert into Course_Section(Class_ID, Section, DOW, Time_Before_Tardy, Ins_ID)
value('55555','A','TR', '00:10:00', '5');

insert into Course_Section(Class_ID, Section, DOW, Time_Before_Tardy, Ins_ID)
value('55555','B','MWF', '00:10:00', '5');

insert into Course_Section(Class_ID, Section, DOW, Time_Before_Tardy, Ins_ID)
value('66666','A','MW', '00:10:00', '1');


/*Class_Session Note: change each records time format to 00:00:00*/

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('11111','A','2020-01-13', '10:00:00', '10:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('11111','A','2020-01-15', '10:00:00', '10:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('11111','A','2020-01-17', '10:00:00', '10:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('11111','A','2020-01-20', '10:00:00', '10:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('11111','A','2020-01-22', '10:00:00', '10:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('11111','A','2020-01-24', '10:00:00', '10:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('11111','A','2020-01-27', '10:00:00', '10:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('11111','A','2020-01-29', '10:00:00', '10:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('11111','A','2020-01-31', '10:00:00', '10:50:00', 'y');


insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('11111','B','2020-01-14', '13:00:00', '13:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('11111','B','2020-01-15', '13:00:00', '13:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('11111','B','2020-01-16', '13:00:00', '13:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('11111','B','2020-01-21', '13:00:00', '13:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('11111','B','2020-01-22', '13:00:00', '13:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('11111','B','2020-01-23', '13:00:00', '13:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('11111','B','2020-01-28', '13:00:00', '13:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('11111','B','2020-01-29', '13:00:00', '13:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('11111','B','2020-01-30', '13:00:00', '13:50:00', 'y');


insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('22222','A','2020-01-13', '15:00:00', '15:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('22222','A','2020-01-15', '15:00:00', '15:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('22222','A','2020-01-17', '15:00:00', '15:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('22222','A','2020-01-20', '15:00:00', '15:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('22222','A','2020-01-22', '15:00:00', '15:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('22222','A','2020-01-24', '15:00:00', '15:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('22222','A','2020-01-27', '15:00:00', '15:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('22222','A','2020-01-29', '15:00:00', '15:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('22222','A','2020-01-31', '15:00:00', '15:50:00', 'y');



insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('22222','B','2020-01-14', '10:00:00', '10:50:00', 'n');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('22222','B','2020-01-16', '10:00:00', '10:50:00', 'n');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('22222','B','2020-01-21', '10:00:00', '10:50:00', 'n');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('22222','B','2020-01-23', '10:00:00', '10:50:00', 'n');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('22222','B','2020-01-28', '10:00:00', '10:50:00', 'n');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('22222','B','2020-01-30', '10:00:00', '10:50:00', 'n');



insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('33333','A','2020-01-13', '13:00:00', '14:15:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('33333','A','2020-01-15', '13:00:00', '14:15:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('33333','A','2020-01-17', '13:00:00', '14:15:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('33333','A','2020-01-20', '13:00:00', '14:15:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('33333','A','2020-01-22', '13:00:00', '14:15:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('33333','A','2020-01-24', '13:00:00', '14:15:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('33333','A','2020-01-27', '13:00:00', '14:15:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('33333','A','2020-01-29', '13:00:00', '14:15:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('33333','A','2020-01-31', '13:00:00', '14:15:00', 'y');



insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('44444','A','2020-01-16', '16:00:00', '18:15:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('44444','A','2020-01-23', '16:00:00', '18:15:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('44444','A','2020-01-30', '16:00:00', '18:15:00', 'y');



insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('55555','A','2020-01-14', '11:00:00', '11:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('55555','A','2020-01-16', '11:00:00', '11:50:00', 'Y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('55555','A','2020-01-21', '11:00:00', '11:50:00', 'Y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('55555','A','2020-01-23', '11:00:00', '11:50:00', 'Y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('55555','A','2020-01-28', '11:00:00', '11:50:00', 'n');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('55555','A','2020-01-30', '11:00:00', '11:50:00', 'n');



insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('55555','B','2020-01-13', '14:00:00', '14:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('55555','B','2020-01-15', '14:00:00', '14:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('55555','B','2020-01-17', '14:00:00', '14:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('55555','B','2020-01-20', '14:00:00', '14:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('55555','B','2020-01-22', '14:00:00', '14:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('55555','B','2020-01-24', '14:00:00', '14:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('55555','B','2020-01-27', '14:00:00', '14:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('55555','B','2020-01-29', '14:00:00', '14:50:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('55555','B','2020-01-31', '14:00:00', '14:50:00', 'y');


insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('66666','A','2020-01-13', '14:30:00', '15:30:00', 'n'); 

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('66666','A','2020-01-15', '14:30:00', '15:30:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('66666','A','2020-01-20', '14:30:00', '15:30:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('66666','A','2020-01-22', '14:30:00', '15:30:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('66666','A','2020-01-27', '14:30:00', '15:30:00', 'y');

insert into Class_Session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)
value('66666','A','2020-01-29', '14:30:00', '15:30:00', 'y');


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
value('870888999', '66666', 'A');

insert into Enroll(Std_ID, Class_ID, Section)
value('870888999', '55555', 'A');

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
value('870888999', '1');

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
value('870888999', '5'); 

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
value('11111', 'A', '870444666', '10:03:00', '2020-01-13', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'A', '870444666', '10:08:00', '2020-01-15', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'A', '870444666', '10:01:00', '2020-01-17', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'A', '870444666', '10:00:00', '2020-01-20', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'A', '870444666', '10:12:00', '2020-01-22', 'tardy'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'A', '870444666', '10:00:00', '2020-01-24', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'A', '870444666', '10:24:00', '2020-01-27', 'tardy'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'A', '870444666', null, '2020-01-29', 'absent'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'A', '870444666', null, '2020-01-31', 'absent'); 


insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'A', '870444666', '15:00:00', '2020-01-13', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'A', '870444666', '15:15:00', '2020-01-15', 'tardy'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'A', '870444666', '15:15:00', '2020-01-17', 'tardy'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'A', '870444666', '15:00:00', '2020-01-20', 'tardy'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'A', '870444666', null, '2020-01-22', 'absent'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'A', '870444666', '15:35:00', '2020-01-24', 'tardy'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'A', '870444666', '15:00:00', '2020-01-27', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'A', '870444666', '15:08:00', '2020-01-29', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'A', '870444666', '15:45:00', '2020-01-31', 'tardy'); 



insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('33333', 'A', '870444666', null, '2020-01-13', 'absent'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('33333', 'A', '870444666', null, '2020-01-15', 'absent'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('33333', 'A', '870444666', null, '2020-01-17', 'absent'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('33333', 'A', '870444666', '13:11:00', '2020-01-20', 'tardy'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('33333', 'A', '870444666', '13:00:00', '2020-01-22', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('33333', 'A', '870444666', null, '2020-01-24', 'absent'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('33333', 'A', '870444666', '13:07:00', '2020-01-27', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('33333', 'A', '870444666', '13:03:00', '2020-01-29', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('33333', 'A', '870444666', '13:10:00', '2020-01-31', 'tardy'); 



insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('44444', 'A', '870869111', '14:00:00', '2020-01-17', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('44444', 'A', '870869111', '14:05:00', '2020-01-23', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('44444', 'A', '870869111', '14:02:00', '2020-01-30', 'present'); 


insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('33333', 'A', '870869111', '13:15:00', '2020-01-13', 'tardy'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('33333', 'A', '870869111', '13:15:00', '2020-01-15', 'tardy'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('33333', 'A', '870869111', '14:00:00', '2020-01-17', 'tardy'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('33333', 'A', '870869111', '13:00:00', '2020-01-20', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('33333', 'A', '870869111', '13:00:00', '2020-01-22', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('33333', 'A', '870869111', '13:07:00', '2020-01-24', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('33333', 'A', '870869111', '13:10:00', '2020-01-27', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('33333', 'A', '870869111', '13:00:00', '2020-01-29', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('33333', 'A', '870869111', '13:00:00', '2020-01-31', 'present'); 


insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('66666', 'A', '870555888', '14:30:00', '2020-01-13', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('66666', 'A', '870555888', '14:30:00', '2020-01-15', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('66666', 'A', '870555888', '14:40:00', '2020-01-20', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('66666', 'A', '870555888', '14:34:00', '2020-01-22', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('66666', 'A', '870555888', null, '2020-01-27', 'absent'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('66666', 'A', '870555888', '14:31:00', '2020-01-29', 'present'); 



insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'B', '870555888', '13:30:00', '2020-01-14', 'tardy'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'B', '870555888', '13:02:00', '2020-01-15', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'B', '870555888', '13:00:00', '2020-01-16', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'B', '870555888', '13:08:00', '2020-01-21', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'B', '870555888', '13:15:00', '2020-01-22', 'tardy'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'B', '870555888', null, '2020-01-23', 'absent'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'B', '870555888', '13:02:00', '2020-01-28', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'B', '870555888', '13:00:00', '2020-01-29', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'B', '870555888', '13:05:00', '2020-01-30', 'present'); 



insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'B', '870555888', '10:00:00', '2020-01-14', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'B', '870555888', '10:00:00', '2020-01-16', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'B', '870555888', '10:00:00', '2020-01-21', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'B', '870555888', '10:00:00', '2020-01-23', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'B', '870555888', '10:08:00', '2020-01-28', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'B', '870555888', '10:00:00', '2020-01-30', 'present'); 



insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'B', '870111222', '10:00:00', '2020-01-14', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'B', '870111222', '10:00:00', '2020-01-16', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'B', '870111222', null, '2020-01-21', 'absent'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'B', '870111222', '10:01:00', '2020-01-23', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'B', '870111222', '10:10:00', '2020-01-28', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'B', '870111222', '10:25:00', '2020-01-30', 'tardy');

 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('55555', 'B', '870111222', '14:00:00', '2020-01-13', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('55555', 'B', '870111222', '14:00:00', '2020-01-15', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('55555', 'B', '870111222', '14:00:00', '2020-01-17', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('55555', 'B', '870111222', '14:18:00', '2020-01-20', 'tardy'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('55555', 'B', '870111222', '14:20:00', '2020-01-22', 'tardy'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('55555', 'B', '870111222', '14:00:00', '2020-01-24', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('55555', 'B', '870111222', null, '2020-01-27', 'absent'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('55555', 'B', '870111222', '14:00:00', '2020-01-29', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('55555', 'B', '870111222', null, '2020-01-31', 'absent'); 



insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'A', '870888999', null, '2020-01-13', 'absent'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'A', '870888999', null, '2020-01-15', 'absent'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'A', '870888999', '15:10:00', '2020-01-17', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'A', '870888999', '15:09:00', '2020-01-20', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'A', '870888999', '15:10:00', '2020-01-22', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'A', '870888999', '15:15:00', '2020-01-24', 'tardy'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'A', '870888999', '15:02:00', '2020-01-27', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'A', '870888999', '15:00:00', '2020-01-29', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('22222', 'A', '870888999', '15:10:00', '2020-01-31', 'present'); 



insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('55555', 'B', '870333555', null, '2020-01-13', 'absent'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('55555', 'B', '870333555', null, '2020-01-15', 'absent'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('55555', 'B', '870333555', '11:00:00', '2020-01-17', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('55555', 'B', '870333555', '11:00:00', '2020-01-20', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('55555', 'B', '870333555', '11:00:00', '2020-01-22', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('55555', 'B', '870333555', '11:05:00', '2020-01-24', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('55555', 'B', '870333555', '11:00:00', '2020-01-27', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('55555', 'B', '870333555', '11:07:00', '2020-01-29', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('55555', 'B', '870333555', '11:00:00', '2020-01-31', 'present'); 



insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'B', '870333555', '13:00:00', '2020-01-14', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'B', '870333555', '13:00:00', '2020-01-15', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'B', '870333555', '13:00:00', '2020-01-16', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'B', '870333555', '13:11:00', '2020-01-21', 'tardy'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'B', '870333555', '13:17:00', '2020-01-22', 'tardy'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'B', '870333555', '13:00:00', '2020-01-23', 'present'); 

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'B', '870333555', '13:25:00', '2020-01-28', 'tardy');

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'B', '870333555', '13:00:00', '2020-01-29', 'present');  

insert into Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)
value('11111', 'B', '870333555', '13:00:00', '2020-01-30', 'present'); 