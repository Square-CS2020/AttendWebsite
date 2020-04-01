select Class_Name, Dept, Cource_Number, hours
from course
where  course.Class_ID in (select Class_ID
						  from enroll
						  where Std_ID = '870555888'); 
                          
select course.Class_Name, course.Dept, course.Cource_Number, course.hours, enroll.Section
from course
inner join enroll on course.Class_ID = enroll.Class_ID and enroll.Std_ID = '870555888'; 


