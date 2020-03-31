# AttendWebsite
This will contain all components for our Attendance Website.

UPDATE: I added a new filed in to the course_section table:Time_Before_Tardy.
With this the instructor can set the amount time a student has to sign in before
they will be marked tardy.

Database Structure: 

Attendence Table: Tracks the log-in time of students for specific cources and their attendence status.

    Structure: Attendence(Class_ID, Section, Std_ID, Log_time, Log_date, Atten_status)

    Class_ID: Stores class/cource ID

    Section: Stores class/cource ID section

    Std_ID: Stores student 870 number.

    Log_time: stores time the student loged in(hour:minutes:seconds)

    Log_date: stores date of class-session.(year:month:day)

    Atten_status: stores attendence status base on their Log_time.(tardy, absent, present)
  
  
Class_sesion Table: Stores info about class-session.

    Structure: Class-session(Class_ID, Section, Ses_date, Start_time, End_time, Valid)

    Class_ID: Stores class/cource ID

    Section: Stores class/cource ID section

    Ses_date: stores date of class-session(year:month:day)

    Start_time: stores start time of session(hour:minutes:seconds)

    End_time: stores end time of session(hour:minutes:seconds)

    Valid: stores whether a class-session is valid(y for yes or n for no)

  
Course Table: Stores info about course.

    Structure: Course(Class_ID, Class_Name, Dept, Cource_Number, hours, Semester, Sem_year, Start_date, End_date)

    Class_ID: Stores class/cource ID

    Class_Name: Name of the class/cource 

    Dept: stores the deptartment the cource is apart of(CS, MATH, etc)

    Cource_Number: class/cource number(1301, 2001, ect)

    hours: number of cource hours

    Semester: when the course is offered(Spring, Fall, etc)

    Sem_year: what year the course is offered

    Start_date: when the cource starts(year:month:day) 

    End_date: when the cource ends(year:month:day)
  
  
Course_Section Table: Stores info about a courses section. For example for course with ID 11111 this
                      will display info on 11111 section A and 11111 section B.
                      
    Structure:  Course_Section(Class_ID, Section, DOW, Time_Before_Tardy, Ins_ID)

    Class_ID: Stores class/course ID

    Section: Stores class/course ID section

    DOW: Stores what day a course/class occurs(M: Monday, T:Tuesday, W:Wendsday, R:Thursday, F:Friday)
    
    Time_Before_Tardy: Stores amount of time after the class start time before a student is marked tardy.

    Ins_ID: Stores the ID of the instructor who teaches this course section.


Enroll Table: Tracks which class a student is enrolled in

    Structure: Enroll(Std_ID, Class_ID, Section)

    Std_ID: Stores student 870 number. 

    Class_ID: Stores class/course ID

    Section: Stores class/course ID section
  
  
Instructor: Stores info about Instructor

    Structure: Instructor(Ins_ID, Fname, Lname)

    Ins_ID: ID of Instructor(for now they are assigned a number between 1-9)

    Fname: First name of Instructor 

    Lname: Last name of Instructor
  
  
Student Table: Stores info about Student

    Structure: Student(Std_ID, Fname, Lname, Sex, Senority)

    Std_ID: ID of Student

    Fname: First name

    Lname: Last name

    Sex: student sex 

    Senority: Student senority
  
  
Teach Table:  Tracks which students are taught by a specific instructor

    Structure: Teach(Std_ID, Ins_ID)

    Std_ID: ID of student 

    Ins_ID: ID of Instructor
