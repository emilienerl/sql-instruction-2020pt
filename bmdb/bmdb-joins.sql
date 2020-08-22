-- inner join: data in common between  2 tables
-- joining data from movie and credit tables
-- you'll only see the movies you have data for from these two tables

select * from movie as m
join credit as c
on movie.id = credit.MovieID;  
-- why we use tablename.field - telling it how to qualify the join, from this table I want x field

-- giving both tables aliases
select m.id, title, c.id, role 
	from movie as m
	join credit as c
		on m.id = c.MovieID;  
        -- pairing the foreign key to primary key relationship
 
 -- doing a join without explicitly saying join. do not do joins this way.
 select * from movie, credit
 where movie.id = credit.MovieID;
 
 -- inner join credit - actor
 select * from credit as c
	join actor as a
	on c.ActorID = a.ID;

 -- outer (left) join, all movies and all actors assigned
 select * from movie
	left outer join credit 
	on movie.ID = credit.MovieID;
  

    