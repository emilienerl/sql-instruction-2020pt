-- create and select the database
DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;

-- create Movie table
-- DROP TABLE IF EXISTS Movie;
Create table Movie (
ID 			integer 		primary key auto_increment,
Title 		varchar(255) 	not null unique,
Year 		integer 		not null,
Rating 		varchar(5) 		not null,
Director 	varchar(255) 	not null
-- CONSTRAINT utitle unique (Title)
);

-- Add some movies
 insert into Movie VALUES
 	(1, 'Star Wars', 1977, 'PG', 'George Lucas'),
 	(2, 'Sixteen Candles', 1984, 'PG', 'John Hughes'),
  	(3, 'Fifth Element', 1997, 'PG-13', 'John Hughes'),
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
