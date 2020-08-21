SELECT * FROM movie;
insert into movie
	values 
            (16, 'Animal House', '1978', 'R', 'John Landis'),
            (17, 'Love Actually', '2003', 'R', 'Richard Curtis'),
            (18, 'The Departed', '2006', 'R', 'Martin Scorsese'),
            (19, 'Lady Bird', '2017', 'R', 'Greta Gerwig');
 
 
 select * from actor;
 insert into actor 
	(firstname, lastname, gender, birthdate)
    values
	('Paul', 'Rudd', 'M', '1969-04-06');
    
    select * from credit;
    
    insert into credit 
    (actorid, movieid, role) values
    (9, 7, 'Danny');
            
            
select * from actor
where firstname = 'molly';
