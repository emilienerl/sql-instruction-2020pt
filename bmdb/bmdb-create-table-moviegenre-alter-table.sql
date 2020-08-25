-- combo of genre+movie must be unique
drop table if exists movieGenre;
Create table movieGenre (
ID 			integer 		primary key auto_increment,
movieID 	integer 	not null,
genreID		integer		not null
);

ALTER TABLE movieGenre 
add FOREIGN KEY(genreID) REFERENCES genre(ID),
add CONSTRAINT mov_gen unique (movieID, genreID);

ALTER TABLE movieGenre 
add FOREIGN KEY(movieID) REFERENCES movie(ID)

/*
create Genre table
Create table Genre (
ID		integer			primary key auto_increment,
Name	varchar(20)		not null unique
);
*/