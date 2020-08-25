 -- bmdb genre queries
 
 -- id of comedy genre
 select id from genre
	where name = 'Comedy';

-- 3 table join to list comedy movies
select * 
	from movie as m
    join moviegenre as mg
		on mg.movieID = m.ID
	join genre as g
		on g.ID = mg.genreID;
        
-- 3 table join to list comedy movies
select m.title, g.name
	from movie as m
    join moviegenre as mg
		on mg.movieID = m.ID
	join genre as g
		on g.ID = mg.genreID
    where g.id = (select id from genre 
				where name = 'Comedy');    
                -- you can replace comedy with any genre
                
	/* 5 table join
    show all movies, actors and genres
    - movie title & year, actor fname & lname & role, genre name
    - 5 tables in order: movie, credit, actor, moviegenre, genre
    we must have join tables to help with the many to many relationships */
    
    select m.title, m.year, a.firstName, a.lastName, c.role, g.name
		from movie m
	join credit c
        on c.MovieID = m.ID
	join actor a
        on a.ID = c.ActorID
    join moviegenre mg
		on mg.MovieID = m.ID
    join genre g
		on g.ID = mg.genreID;

