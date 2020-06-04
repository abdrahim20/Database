------- Sub Query  -----------

select Name_student from Students where Id_dept in (select Id_dept from Departments where Name_dept like 'I%' )

select Name_student from Students where Id_dept in (select Id_dept from Departments where Name_dept like 'S%' )

select Name_course from Courses where Id_teacher in (select Id_teacher from Teacher where Name_teacher like '_h%')

------- Count ---------

select count(Id_course) as Students_Course_Count from Student_Courses

select count (phones) as Students_Phones_Count from students_phones where Id_student=1

---- group by --------

select [Age] , count(Name_student) from Students group by [Age]

select [Address] , count(Name_student) from Students group by [Address]

----- ------ -------Join------ --------
------inner join-------

select Name_student , Name_dept from Students
inner join Departments 
on Students.Id_dept = Departments.Id_dept 

select Name_student,Name_course from Students
inner join Student_Courses
on Students.Id_student=Student_Courses.Id_student
inner join Courses on Student_Courses.Id_course =Courses.Id_course

----- left join ---------

select Name_student , Name_dept from Students
left join Departments 
on Students.Id_dept = Departments.Id_dept 

-------- right join --------

select Name_student , Name_dept from Students
right join Departments 
on Students.Id_dept = Departments.Id_dept

------------- insert into ------------

insert into Students Values (7,'Mostafa Alaa','Alex','male','1999-12-2',21, 2) 

insert into Students Values (8,'Mostafa Mohamed','Giza','male','2000-8-15',19, null)

insert into Students Values (9,'Malk Ahmed','Cairo','female','2000-4-21',20, 4)

insert into Departments Values (6,'Ios')

insert into Teacher Values (6,'Mai Yassin' )

--------------Update----------

update Students set Name_student='Ahmed Mostafa' , [Address]= 'Aswan' , [Date of birth] = '2000-1-1', Age=20 ,Id_dept= 4 where Id_student= 7

update Students set Name_student='Yassin Ali' , [Address]= 'Alex' , [Date of birth] = '2000-12-12', Age=19 ,Id_dept= 2 where Id_student= 8

update Students set Name_student='Mostafa Yassin' , [Address]= 'Aswan' ,Sex='Male' , [Date of birth] = '2000-5-5', Age=20 ,Id_dept= null where Id_student= 9

update Departments set Name_dept='Android' where Id_dept=6  

update Teacher set Name_teacher='Malk Mostafa' where Id_teacher=6

----------delete-----------

delete Students where Id_student = 7 

delete Students where Id_student = 8 

delete Students where Id_student = 9

delete Departments where Id_dept= 6

delete Teacher where Id_teacher = 6    