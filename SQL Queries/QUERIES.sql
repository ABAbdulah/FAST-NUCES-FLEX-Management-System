------------------------------------- ADMIN
--Home page
SELECT Fname, Lname, ContactNo 
FROM AdminSignup$ 
WHERE Email_Id = @Email


--signupp
select count(*) 
FROM AdminSignup$ 
WHERE Email_Id = @Email

INSERT INTO AdminSignup$(Fname, Lname, Email_Id, ContactNo, Password) 
VALUES (@Fname, @Lname, @Email, @ContactNo, @Password)

--Login page
SELECT COUNT(*) 
FROM AdminSignup$
WHERE Email_Id = @Email AND Password = @Password

--offercourse
IF EXISTS (SELECT 1 FROM Courses WHERE CourseCode = @CourseCode OR CREDIT_HRS = @CREDIT_HRS)
BEGIN
-- If the course exists, delete it
DELETE FROM Courses WHERE CourseCode = @CourseCode
END
ELSE
BEGIN
-- If the course does not exist, insert it
INSERT INTO Courses (CourseCode, CREDIT_HRS)
VALUES (@CourseCode, @CREDIT_HRS)
END


------------------------------------- Instructor queries 

-- information 
select * from instructor
where INS_ID= 'I10'

-- evaluation
select* from assignment
join instructor_course on instructor_course.COURSE_ID= assignment.COURSE_ID
join course_section on course_section.COURSE_ID = assignment.COURSE_ID
where assignment. course_id = 'CS101'-- the one that has been entered by the user 

select* from quiz
join instructor_course on instructor_course.COURSE_ID= quiz.COURSE_ID
join course_section on course_section.COURSE_ID = quiz.COURSE_ID
where quiz.course_id = 'CS101'-- the one that has been entered by the user 


select* from final
join instructor_course on instructor_course.COURSE_ID= final.COURSE_ID
join course_section on course_section.COURSE_ID = final.COURSE_ID
where final.course_id = 'CS101'-- the one that has been entered by the user 




-- Attendance 
--course, section, date
select *from attendance 
where COURSE_ID= 'CS101' AND SECTION_ID = 'E'
AND ATTEN_DATE= '2023-05-14'

update attendance set STATUS= 'Absent' where COURSE_ID= 'CS101' AND SECTION_ID = 'E'
AND ATTEN_DATE= '2023-05-14'
and STUDENT_ID= '21I0780'


-- feedback 
select * from feedback where INS_ID= 'I1'


select INS_NAME from Instructor
where INS_ID = 'I1'

ALTER TABLE Instructor ADD  address varchar(30), dob date, major varchar (30), email varchar(30) 
select * from instructor
select* from instructor_course


------------------------------- STUDENT ------------------------------

-- Information

select *from student 
where STUDENT_ID= '21i0780'

-- attendance 
--course, section, date
select *from attendance 
where COURSE_ID= 'CS101' AND SECTION_ID = 'E'
AND ATTEN_DATE= '2023-05-14'

-- Evaluation 
select * from assignment
join course_section on assignment.COURSE_ID = course_section.COURSE_ID
where STUDENT_ID= '21I0780' and SECTION_ID= 'E'





ALTER TABLE ATTENDANCE ADD  STATUS VARCHAR(30) 

select course_id from instructor_course
where ins_id = 'I1'

SELECT section_id FROM instructor_course WHERE ins_id = 'I1' AND course_id = 'CS101'

INSERT INTO ATTENDANCE(SECTION_ID)
VALUES ();

select attendance.ATTEN_DATE,	attendance.INS_ID,attendance.STUDENT_ID,	attendance.COURSE_ID,	attendance.SECTION_ID , attendance.status from attendance
join instructor_course on instructor_course.INS_ID = attendance.INS_ID
select status from attendance




