------------------------------------------Questions--------------------------------------------------------------------------

-----------  What is the minimum in the age field for a student table? ------------
SELECT MIN(Age) AS SmallestAge FROM Students
----------- What is the maximum in the age field of the student table? ------------
SELECT MAX(Age) AS LargestAge FROM Students 
----------- How to convert names field from lower case to upper case for student table? ------------
SELECT UPPER(Name_student)FROM Students 
----------- How do we know the number of subjects in the Department for the  Departments table? ------------
SELECT COUNT(Id_dept) AS NumberOfDepartments FROM Departments
----------- What are the years of students who were born without repetition? ------------
SELECT distinct Year([Date of birth]) AS Year FROM Students
----------- What are the months in which students were born without repetition? ------------
SELECT distinct Month([Date of birth]) AS Month FROM Students
----------- What are the days when students were born without repetition?  ------------
SELECT distinct Day([Date of birth]) AS Day FROM Students
----------- How does ASCII find out the Student Names field for the Student table?  ------------
SELECT ASCII(Name_student) AS NumCodeOfFirstChar FROM Students
----------- How to know the longest name of the names of students? ------------
SELECT distinct LEN(Name_student) AS Thelongestname FROM Students
----------- How to cut the student's name from the right according to what you want? ------------
SELECT RIGHT( Name_student, 7) AS ExtractString FROM Students
----------- How to cut the student name according to what you want and convert it to something else according to what you want? ------------
SELECT STUFF(Name_student, 1, 4, 'ABDO') AS ExtractString FROM Students
----------- How do students know about years of cos? ------------
SELECT Cos(Age) AS CosAge FROM Students
----------- How do students know the sin of years? ------------
SELECT Sin(Age) AS SinAge FROM Students
----------- How to know Unicode based on the student's age? ------------
SELECT UNICODE(Age) AS UNICODE FROM Students
----------- How to cut the name of the student left, according to what you want? ------------
SELECT LEFT( Name_student, 4) AS ExtractString FROM Students
----------- How to search for index any letter in the name of the student? ------------
SELECT CHARINDEX('A',Name_student) AS MatchPosition FROM Students
----------- How do you know the current date? ------------
SELECT GETDATE()FROM Students
----------- How do I combine the subject word with the name_course field in the course table? ------------
SELECT Name_course + ' subject' AS ExtractString FROM Courses
----------- How to reflect names based on the names of students? ------------
SELECT REVERSE(Name_student) AS ExtractString FROM Students
----------- How to convert id_student to UNICODE? ------------
SELECT NCHAR(Id_student) AS NumberCodeToUnicode FROM Students
----------- How to put students' birth dates in parentheses of the matrix? ------------
SELECT QUOTENAME([Date of birth]) FROM Students
----------- How to convert student age from integer to string? ------------
SELECT STR(Age) As Age_String FROM Students
----------- How do I know the names of the two joint titles without repeating the student table? ------------
SELECT distinct Address AS AddressStudents FROM Students


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