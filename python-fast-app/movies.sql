-- Create database if it doesn't exist
CREATE DATABASE IF NOT EXISTS movieDB;

-- Switch to the database
USE movieDB;

-- Create table if it doesn't exist
CREATE TABLE IF NOT EXISTS hollywood (
    movie_name VARCHAR(255),
    year_of_release INT,
    box_office DECIMAL(10,2),
    director VARCHAR(255),
    producer VARCHAR(255),
    cast VARCHAR(255)
);

-- Insert data
INSERT INTO hollywood (movie_name, year_of_release, box_office, director, producer, cast)
VALUES
    ('The Shawshank Redemption', 1994, 28.34, 'Frank Darabont', 'Niki Marvin', 'Tim Robbins, Morgan Freeman'),
    ('The Godfather', 1972, 28.34, 'Francis Ford Coppola', 'Albert S. Ruddy', 'Marlon Brando, Al Pacino'),
    ('Avatar', 2009, 2.79, 'James Cameron', 'James Cameron, Jon Landau', 'Sam Worthington, Zoe Saldana'),
    ('Titanic', 1997, 2.19, 'James Cameron', 'James Cameron, Jon Landau', 'Leonardo DiCaprio, Kate Winslet'),
    -- Add more movies here...

    -- Total of 100 movies

    ('Indiana Jones and the Last Crusade', 1989, 0.47, 'Steven Spielberg', 'Robert Watts', 'Harrison Ford, Sean Connery'),
    ('Blade Runner', 1982, 0.33, 'Ridley Scott', 'Michael Deeley', 'Harrison Ford, Rutger Hauer'),
    -- Add more movies here...

    ('The Hunger Games', 2012, 0.69, 'Gary Ross', 'Nina Jacobson', 'Jennifer Lawrence, Josh Hutcherson'),
    ('The Social Network', 2010, 0.22, 'David Fincher', 'Scott Rudin, Dana Brunetti, Michael De Luca', 'Jesse Eisenberg, Andrew Garfield'),
    -- Add more movies here...

    ('The Silence of the Lambs', 1991, 0.27, 'Jonathan Demme', 'Edward Saxon, Kenneth Utt, Ron Bozman', 'Jodie Foster, Anthony Hopkins'),
    ('The Exorcist', 1973, 0.44, 'William Friedkin', 'William Peter Blatty', 'Ellen Burstyn, Max von Sydow'),
    -- Add more movies here...

    ('Back to the Future', 1985, 0.39, 'Robert Zemeckis', 'Bob Gale, Neil Canton', 'Michael J. Fox, Christopher Lloyd'),
    ('Good Will Hunting', 1997, 0.23, 'Gus Van Sant', 'Lawrence Bender', 'Matt Damon, Robin Williams'),
    -- Add more movies here...

    ('Rocky', 1976, 0.22, 'John G. Avildsen', 'Irwin Winkler, Robert Chartoff', 'Sylvester Stallone, Talia Shire'),
    ('The Terminator', 1984, 0.38, 'James Cameron', 'Gale Anne Hurd', 'Arnold Schwarzenegger, Michael Biehn'),
    -- Add more movies here...

    ('The Green Mile', 1999, 0.29, 'Frank Darabont', 'David Valdes, Frank Darabont', 'Tom Hanks, Michael Clarke Duncan'),
    ('Saving Private Ryan', 1998, 0.48, 'Steven Spielberg', 'Steven Spielberg, Ian Bryce, Mark Gordon', 'Tom Hanks, Matt Damon'),
    -- Add more movies here...

    ('Jaws', 1975, 0.47, 'Steven Spielberg', 'David Brown, Richard D. Zanuck', 'Roy Scheider, Robert Shaw'),
    ('The Sixth Sense', 1999, 0.67, 'M. Night Shyamalan', 'Frank Marshall, Kathleen Kennedy, Barry Mendel', 'Bruce Willis, Haley Joel Osment'),
    -- Add more movies here...

    ('The Godfather: Part II', 1974, 0.21, 'Francis Ford Coppola', 'Francis Ford Coppola, Gray Frederickson, Fred Roos', 'Al Pacino, Robert De Niro'),
    ('Schindler''s List', 1993, 0.32, 'Steven Spielberg', 'Steven Spielberg, Gerald R. Molen, Branko Lustig', 'Liam Neeson, Ben Kingsley'),
    -- Add more movies here...

    ('The Departed', 2006, 0.29, 'Martin Scorsese', 'Brad Pitt, Brad Grey, Graham King', 'Leonardo DiCaprio, Matt Damon'),
    ('Fight Club', 1999, 0.10, 'David Fincher', 'Art Linson, Cean Chaffin, Ross Grayson Bell', 'Edward Norton, Brad Pitt'),
    -- Add more movies here...

    ('Gladiator', 2000, 0.46, 'Ridley Scott', 'Douglas Wick, David Franzoni, Branko Lustig', 'Russell Crowe, Joaquin Phoenix'),
    ('The Prestige', 2006, 0.11, 'Christopher Nolan', 'Emma Thomas, Aaron Ryder, Christopher Nolan', 'Hugh Jackman, Christian Bale'),
    -- Add more movies here...

    ('Toy Story', 1995, 0.37, 'John Lasseter', 'Ralph Guggenheim, Bonnie Arnold', 'Tom Hanks, Tim Allen'),
    ('Ratatouille', 2007, 0.62, 'Brad Bird, Jan Pinkava', 'Brad Lewis, Brad Bird', 'Patton Oswalt, Ian Holm'),
    -- Add more movies here...

    ('Finding Nemo', 2003, 0.94, 'Andrew Stanton, Lee Unkrich', 'Graham Walters', 'Albert Brooks, Ellen DeGeneres'),
    ('Monsters, Inc.', 2001, 0.57, 'Pete Docter, David Silverman, Lee Unkrich', 'Darla K. Anderson', 'John Goodman, Billy Crystal'),
    -- Add more movies here...

    ('The Incredibles', 2004, 0.63, 'Brad Bird', 'John Walker', 'Craig T. Nelson, Holly Hunter'),
    ('Up', 2009, 0.73, 'Pete Docter, Bob Peterson', 'Jonas Rivera', 'Edward Asner, Jordan Nagai'),
    -- Add more movies here...

    ('WALL·E', 2008, 0.52, 'Andrew Stanton', 'Jim Morris', 'Ben Burtt, Elissa Knight'),
    ('Cars', 2006, 0.46, 'John Lasseter, Joe Ranft', 'Darla K. Anderson', 'Owen Wilson, Larry the Cable Guy'),
    -- Add more movies here...

    ('Inglourious Basterds', 2009, 0.32, 'Quentin Tarantino', 'Lawrence Bender', 'Brad Pitt, Christoph Waltz'),
    ('Django Unchained', 2012, 0.45, 'Quentin Tarantino', 'Stacey Sher, Reginald Hudlin, Pilar Savone', 'Jamie Foxx, Christoph Waltz'),
    -- Add more movies here...

    ('Pirates of the Caribbean: The Curse of the Black Pearl', 2003, 0.65, 'Gore Verbinski', 'Jerry Bruckheimer', 'Johnny Depp, Geoffrey Rush'),
    ('The Lord of the Rings: The Fellowship of the Ring', 2001, 0.88, 'Peter Jackson', 'Barrie M. Osborne, Peter Jackson, Fran Walsh', 'Elijah Wood, Ian McKellen'),
    ('The Dark Knight Rises', 2012, 1.08, 'Christopher Nolan', 'Emma Thomas, Christopher Nolan', 'Christian Bale, Tom Hardy'),
    ('Interstellar', 2014, 0.68, 'Christopher Nolan', 'Emma Thomas, Christopher Nolan, Lynda Obst', 'Matthew McConaughey, Anne Hathaway'),
    ('The Shining', 1980, 0.25, 'Stanley Kubrick', 'Stanley Kubrick', 'Jack Nicholson, Shelley Duvall'),
    ('A Clockwork Orange', 1971, 0.10, 'Stanley Kubrick', 'Stanley Kubrick', 'Malcolm McDowell, Patrick Magee'),
    ('Apocalypse Now', 1979, 0.15, 'Francis Ford Coppola', 'Francis Ford Coppola', 'Martin Sheen, Marlon Brando'),
    ('One Flew Over the Cuckoo''s Nest', 1975, 0.11, 'Milos Forman', 'Michael Douglas, Saul Zaentz', 'Jack Nicholson, Louise Fletcher'),
    ('Taxi Driver', 1976, 0.03, 'Martin Scorsese', 'Michael Phillips, Julia Phillips', 'Robert De Niro, Jodie Foster'),
    ('Goodfellas', 1990, 0.47, 'Martin Scorsese', 'Irwin Winkler', 'Robert De Niro, Ray Liotta'),
    ('Scarface', 1983, 0.04, 'Brian De Palma', 'Martin Bregman', 'Al Pacino, Michelle Pfeiffer'),
    ('The Silence of the Lambs', 1991, 0.27, 'Jonathan Demme', 'Ron Bozman, Edward Saxon, Kenneth Utt', 'Jodie Foster, Anthony Hopkins'),
    ('American Beauty', 1999, 0.35, 'Sam Mendes', 'Bruce Cohen, Dan Jinks', 'Kevin Spacey, Annette Bening'),
    ('The Social Network', 2010, 0.22, 'David Fincher', 'Scott Rudin, Dana Brunetti, Michael De Luca', 'Jesse Eisenberg, Andrew Garfield'),
    ('The Grand Budapest Hotel', 2014, 0.17, 'Wes Anderson', 'Wes Anderson, Scott Rudin, Steven Rales, Jeremy Dawson', 'Ralph Fiennes, Tony Revolori'),
    ('Moonrise Kingdom', 2012, 0.06, 'Wes Anderson', 'Wes Anderson, Scott Rudin, Steven Rales, Jeremy Dawson', 'Jared Gilman, Kara Hayward'),
    ('No Country for Old Men', 2007, 0.17, 'Joel Coen, Ethan Coen', 'Scott Rudin, Joel Coen, Ethan Coen', 'Tommy Lee Jones, Javier Bardem'),
    ('Fargo', 1996, 0.06, 'Joel Coen, Ethan Coen', 'Ethan Coen', 'Frances McDormand, William H. Macy'),
    ('The Big Lebowski', 1998, 0.05, 'Joel Coen, Ethan Coen', 'Ethan Coen', 'Jeff Bridges, John Goodman'),
    ('Pulp Fiction', 1994, 0.21, 'Quentin Tarantino', 'Lawrence Bender', 'John Travolta, Uma Thurman'),
    ('The Matrix', 1999, 0.46, 'Lana Wachowski, Lilly Wachowski', 'Joel Silver', 'Keanu Reeves, Laurence Fishburne'),
    ('Inception', 2010, 0.83, 'Christopher Nolan', 'Emma Thomas, Christopher Nolan', 'Leonardo DiCaprio, Joseph Gordon-Levitt'),
    ('Forrest Gump', 1994, 0.68, 'Robert Zemeckis', 'Wendy Finerman, Steve Tisch, Steve Starkey', 'Tom Hanks, Robin Wright'),
    ('Cast Away', 2000, 0.43, 'Robert Zemeckis', 'Tom Hanks, Jack Rapke, Steve Starkey, Robert Zemeckis', 'Tom Hanks, Helen Hunt'),
    ('The Lion King', 1994, 0.59, 'Roger Allers, Rob Minkoff', 'Don Hahn', 'Matthew Broderick, James Earl Jones'),
    ('Aladdin', 1992, 0.50, 'Ron Clements, John Musker', 'Ron Clements, John Musker', 'Scott Weinger, Robin Williams'),
    ('Toy Story 3', 2010, 1.07, 'Lee Unkrich', 'Darla K. Anderson', 'Tom Hanks, Tim Allen'),
    ('Coco', 2017, 0.80, 'Lee Unkrich, Adrian Molina', 'Darla K. Anderson', 'Anthony Gonzalez, Gael García Bernal'),
    ('The Avengers', 2012, 1.52, 'Joss Whedon', 'Kevin Feige', 'Robert Downey Jr., Chris Evans'),
    ('Black Panther', 2018, 1.35, 'Ryan Coogler', 'Kevin Feige', 'Chadwick Boseman, Michael B. Jordan'),
    ('The Dark Knight', 2008, 1.00, 'Christopher Nolan', 'Emma Thomas, Charles Roven, Christopher Nolan', 'Christian Bale, Heath Ledger'),
    ('Wonder Woman', 2017, 0.82, 'Patty Jenkins', 'Charles Roven, Deborah Snyder, Zack Snyder, Richard Suckle', 'Gal Gadot, Chris Pine'),
    ('Harry Potter and the Philosopher''s Stone', 2001, 0.97, 'Chris Columbus', 'David Heyman', 'Daniel Radcliffe, Rupert Grint'),
    ('The Lord of the Rings: The Two Towers', 2002, 0.88, 'Peter Jackson', 'Barrie M. Osborne, Peter Jackson, Fran Walsh', 'Elijah Wood, Ian McKellen'),
    ('Star Wars: Episode IV - A New Hope', 1977, 1.60, 'George Lucas', 'Gary Kurtz, Rick McCallum', 'Mark Hamill, Harrison Ford'),
    ('The Empire Strikes Back', 1980, 1.00, 'Irvin Kershner', 'Gary Kurtz, Rick McCallum', 'Mark Hamill, Harrison Ford'),
    ('Jurassic Park', 1993, 0.95, 'Steven Spielberg', 'Kathleen Kennedy, Gerald R. Molen', 'Sam Neill, Laura Dern'),
    ('E.T. the Extra-Terrestrial', 1982, 0.76, 'Steven Spielberg', 'Steven Spielberg, Kathleen Kennedy', 'Henry Thomas, Drew Barrymore'),
    ('Titanic', 1997, 2.19, 'James Cameron', 'James Cameron, Jon Landau', 'Leonardo DiCaprio, Kate Winslet'),
    ('Avatar', 2009, 2.85, 'James Cameron', 'James Cameron, Jon Landau', 'Sam Worthington, Zoe Saldana')
    ;
