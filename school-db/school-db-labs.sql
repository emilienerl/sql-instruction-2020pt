-- select statements for each table
select * from student;
select * from enrolled;
select * from course;

-- List all students, ordered by last name
select * from student
	order by lastName;
    
    -- List all students, ordered by last name and where MI is null
select * from student
where middleInitial is null
	order by lastName;
    
-- List all students, ordered by state
select * from student
	order by state;
    
-- How many students from each state?
SELECT COUNT(*), state
	FROM student group by state;
    
-- see states having more than 3 students
SELECT COUNT(*), state
	FROM student group by state
    having count(*) > 3;  

-- Who is the oldest student?
Select * from student  
	order by birthday;
    
-- Who is the oldest student? (using sub-query/sub-select)
Select * from student  
	where birthday = (select min(birthday) from student);

-- Who is the youngest student?


-- What subject has the most classes?
Select subject, count(*) 
	from course group by subject;

-- List all grades ordered by quarter
Select grade, quarter 
	from enrolled as e -- alias e
	join course as c -- alias c
    on courseID = c.id
    order by quarter;
    
-- List all grades ordered by quarter, including student and course name (inner join example)
Select lastname, firstname, subject, c.name, grade, quarter 
	from enrolled as e -- alias 
	join course as c -- alias c
    on courseID = c.id -- foreign key to primary key combo
    join student as s -- alias s
    on s.id = e.studentID
    order by lastname;
    
/*Student enrollment report
- lists all students: fname, lname 
- course name, if enrolled 
*/
select s.id, lastname, firstname, name
	from student as s
    left join enrolled as e
		on s.id = e.studentID
	left join course as c
		on e.courseID = c.id; -- enroll has FK and course has PK
        
Select * from enrolled
	where studentID = 3;