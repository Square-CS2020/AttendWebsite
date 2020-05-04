#create schema AttenRecords;
#drop schema Record;

create table Student(
	Std_ID char(9) NOT NULL,
    Fname varchar(30) NOT NULL,
    Lname varchar(30) NOT NULL,
    Sex char(1) NOT NULL,
    Senority varchar(9) NOT NULL,
    primary key(Std_ID)
);

create table Instructor(
	Ins_ID char(1) NOT NULL,
	Fname varchar(30) NOT NULL,
    Lname varchar(30) NOT NULL,
    primary key(Ins_ID)
);

create table Course(
	Class_ID char(5) NOT NULL,
    Class_Name varchar(40) NOT NULL,
    Dept varchar(5) NOT NULL,
    Cource_Number int NOT NULL,
    hours int NOT NULL,
    Semester varchar(7) NOT NULL,
    Sem_year year NOT NULL,
    Start_date date NOT NULL,
    End_date date NOT NULL,
    primary key(Class_ID)
);
create table Course_Section(
	Class_ID char(5) NOT NULL,
    Section char(1) NOT NULL,
    DOW    char(8) NOT NULL,
    Time_Before_Tardy time NOT NULL,
    Ins_ID char(1) NOT NULL,
    primary key(Class_ID, Section),
    foreign key(Class_ID) REFERENCES Course(Class_ID),
	foreign key(Ins_ID) REFERENCES Instructor(Ins_ID)
);

create table Class_Session(
	Class_ID char(5) NOT NULL,
    Section char(1) NOT NULL,
    Ses_date date NOT NULL,
    Start_time time NOT NULL,
    End_time time NOT NULL,
    Valid char(1) NOT NULL,
    primary key(Class_ID, Section,Ses_date),
	#foreign key(Class_ID, Section) REFERENCES Course(Class_ID),
	foreign key(Class_ID, Section) REFERENCES Course_Section(Class_ID, Section)
);

create table Enroll(
	Std_ID char(9) NOT NULL,
    Class_ID char(5) NOT NULL,
    Section char(1) NOT NULL,
    primary key(Std_ID, Class_ID, Section),
    foreign key(Std_ID) REFERENCES Student(Std_ID),
	#foreign key(Class_ID) REFERENCES Course(Class_ID),
	foreign key(Class_ID, Section) REFERENCES Course_Section(Class_ID, Section)
);

create table Teach(
	Std_ID char(9) NOT NULL,
    Ins_ID char(1) NOT NULL,
    primary key(Std_ID, Ins_ID),
    foreign key(Std_ID) REFERENCES Student(Std_ID),
	foreign key(Ins_ID) REFERENCES Instructor(Ins_ID)
);

create table Attendence(
	Class_ID char(5) NOT NULL,
    Section char(1) NOT NULL,
    Std_ID char(9) NOT NULL,
    Log_time time , 
    Log_date date  NOT NULL,
    Atten_status varchar(8) NOT NULL,
    primary key(Class_ID, Section, Std_ID, Log_date),
	#foreign key(Class_ID) REFERENCES Course(Class_ID),
	foreign key(Class_ID, Section) REFERENCES Class_Session(Class_ID, Section),
	foreign key(Std_ID) REFERENCES Student(Std_ID)
); 

