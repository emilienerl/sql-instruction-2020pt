-- create and select the database
DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;

-- create Movie table
-- DROP TABLE IF EXISTS Movie;
Create table Movie (
ID 			integer 		primary key auto_increment,
Title 		varchar(255) 	not null,
Year 		integer 		not null,
Rating 		varchar(5) 		not null,
Director 	varchar(255) 	not null,
CONSTRAINT unq_movie unique (Title, Year)
);

-- create Actor table
Create table Actor (
ID 			integer 		primary key auto_increment,
FirstName 	varchar(255) 	not null,
LastName 	varchar(255) 	not null,
Gender 		varchar(1) 		not null,
BirthDate 	date 			not null,
CONSTRAINT unq_actor unique (FirstName, LastName, BirthDate)
);
-- constraining the table to certain things
-- give the constraint a name of the purpose of the constraint, this one is unq_actor
-- the constraint will be on the three fields listed above

-- create Credit table
-- when you create a table you are creating fields
-- business rule for Constraint - combo of actor+movie must be unique
-- actorID on the credit table points to the actor table's ID field
-- these FK refer to something else somewhere else
Create table Credit (
ID 			integer 		primary key auto_increment,
ActorID 	integer 		not null,
MovieID 	integer			not null,
Role 		varchar(255) 	not null,
Foreign Key (ActorID) references Actor(ID),
Foreign Key (MovieID) references Movie(ID),
CONSTRAINT act_mov unique (ActorID, MovieID)
);

-- Add some movies
 insert into Movie VALUES
 	(1, 'Star Wars', 1977, 'PG', 'George Lucas'),
 	(2, 'Sixteen Candles', 1984, 'PG', 'John Hughes'),
  	(3, 'Fifth Element', 1997, 'PG-13', 'Luc Besson'),
 	(4, 'Better Off Dead', 1985, 'PG', 'Savage Steve Holland'),
	(5, 'Blazing Saddles', 1974, 'R', 'Mel Brooks'),
    (6, 'Clueless', 1995, 'PG-13', 'Amy Heckerling'),
    (7, 'Role Models', 2008, 'R', 'David Wain'),
    (8, 'Weekend at Bernie''s', 1989, 'PG-13', 'Ted Kotcheff'),
    (9, 'The Shawshank Redemption', 1994, 'R', 'Frank Darabont'),
    (10, 'Brittany Runs a Marathon', 2019, 'R', 'Paul Downs Colaizzo'),
	(11, 'Bridesmaids', 2011, 'R', 'Paul Feig'),
    (12, 'This Is 40', 2012, 'R', 'Judd Apatow'),
    (13, 'Good Boys', 2019, 'R', 'Gene Stupnitsky'),
    (14, 'The Breakfast Club', 1985, 'R', 'John Hughes'),
    (15, 'The Sandlot', 1993, 'PG', 'David Mickey Evans')
    ;

-- Add some actors
-- date fields are YYYY-MM-DD
 insert into Actor VALUES
 	(1, 'Mark', 'Hamill', 'M', '1951-09-25'),
    (2, 'Harrison', 'Ford', 'M', '1942-07-13'),
    (3, 'Molly', 'Ringwald', 'F', '1968-02-18'),
    (4, 'Anthony Michael', 'Hall', 'M', '1968-04-14'),
	(5, 'Bruce', 'Willis', 'M', '1955-03-19'),
    (6, 'John', 'Cusack', 'M', '1966-06-28'),
    (7, 'Gene', 'Wilder', 'M', '1933-06-11'),
	(8, 'Alicia', 'Silverstone', 'F', '1976-10-04')
    ;
    
    -- (ID, actorID, movieID, role)
     insert into Credit VALUES
 	(1, 1, 1, 'Luke Skywalker'),
    (2, 2, 1, 'Han Solo'),
    (3, 3, 2, 'Samantha'),
    (4, 4, 2, 'Farmer Ted'),
    (5, 5, 3, 'Korben Dallas'),
    (6, 6, 4, 'Lane Meyer'),
    (7, 7, 5, 'Jim'),
	(8, 8, 6, 'Cher Horowitz')
    ;