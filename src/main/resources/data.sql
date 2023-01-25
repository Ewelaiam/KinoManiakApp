DO
'
DECLARE
BEGIN

    IF (NOT EXISTS (SELECT * FROM role))
    THEN
        insert into role(id,role_name) values (0,''admin'');
        insert into role(id,role_name) values (1,''manager'');
        insert into role(id,role_name) values (2,''cashier'');
    END IF;
    --     IF (NOT EXISTS(SELECT * FROM hall))
    --     THEN
    --         insert into hall(id, capacity, hall_no) values (0,100,1);
    --         insert into hall(id, capacity, hall_no) values (1,100,2);
    --         insert into hall(id, capacity, hall_no) values (2,100,3);
    --         insert into hall(id, capacity, hall_no) values (3,100,4);
    --     END IF;
    IF (NOT EXISTS(SELECT * FROM movie_category))
    THEN
        insert into movie_category(id, category_name)
        values (0, ''history'');
        insert into movie_category(id, category_name)
        values (1, ''comedy'');
        insert into movie_category(id, category_name)
        values (2, ''film-noir'');
        insert into movie_category(id, category_name)
        values (3, ''action'');
        insert into movie_category(id, category_name)
        values (4, ''music'');
        insert into movie_category(id, category_name)
        values (5, ''crime'');
        insert into movie_category(id, category_name)
        values (6, ''mystery'');
        insert into movie_category(id, category_name)
        values (7, ''biography'');
        insert into movie_category(id, category_name)
        values (8, ''thriller'');
        insert into movie_category(id, category_name)
        values (9, ''war'');
        insert into movie_category(id, category_name)
        values (10, ''animation'');
        insert into movie_category(id, category_name)
        values (11, ''adventure'');
        insert into movie_category(id, category_name)
        values (12, ''drama'');
        insert into movie_category(id, category_name)
        values (13, ''fantasy'');
        insert into movie_category(id, category_name)
        values (14, ''family'');
        insert into movie_category(id, category_name)
        values (15, ''sci-fi'');
        insert into movie_category(id, category_name)
        values (16, ''romance'');
        insert into movie_category(id, category_name)
        values (17, ''sport'');
        insert into movie_category(id, category_name)
        values (18, ''musical'');
        insert into movie_category(id, category_name)
        values (19, ''horror'');
        insert into movie_category(id, category_name)
        values (20, ''western'');
    END IF;
    IF (NOT EXISTS(SELECT * FROM movie))
    THEN
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (0, ''The Shawshank Redemption'', 12, ''Frank Darabont'', 142, ''2022-01-13'', ''Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.'', ''https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (0, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (1, ''The Godfather'', 18, ''Francis Ford Coppola'', 175, ''2022-04-12'', ''An organized crime dynasty''''s aging patriarch transfers control of his clandestine empire to his reluctant son.'', ''https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY98_CR1,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (1, 5);
        insert into movie_categories(movie_id, categories_id) values (1, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (2, ''The Dark Knight'', 18, ''Christopher Nolan'', 152, ''2022-07-14'', ''When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.'', ''https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (2, 3);
        insert into movie_categories(movie_id, categories_id) values (2, 5);
        insert into movie_categories(movie_id, categories_id) values (2, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (3, ''The Godfather: Part II'', 18, ''Francis Ford Coppola'', 202, ''2022-09-19'', ''The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.'', ''https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY98_CR1,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (3, 5);
        insert into movie_categories(movie_id, categories_id) values (3, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (4, ''12 Angry Men'', 18, ''Sidney Lumet'', 96, ''2022-03-24'', ''A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.'', ''https://m.media-amazon.com/images/M/MV5BMWU4N2FjNzYtNTVkNC00NzQ0LTg0MjAtYTJlMjFhNGUxZDFmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (4, 5);
        insert into movie_categories(movie_id, categories_id) values (4, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (5, ''The Lord of the Rings: The Return of the King'', 12, ''Peter Jackson'', 201, ''2022-01-04'', ''Gandalf and Aragorn lead the World of Men against Sauron''''s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.'', ''https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (5, 3);
        insert into movie_categories(movie_id, categories_id) values (5, 11);
        insert into movie_categories(movie_id, categories_id) values (5, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (6, ''Pulp Fiction'', 18, ''Quentin Tarantino'', 154, ''2022-02-03'', ''The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.'', ''https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY98_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (6, 5);
        insert into movie_categories(movie_id, categories_id) values (6, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (7, ''Schindler''''s List'', 12, ''Steven Spielberg'', 195, ''2022-07-19'', ''In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.'', ''https://m.media-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (7, 7);
        insert into movie_categories(movie_id, categories_id) values (7, 12);
        insert into movie_categories(movie_id, categories_id) values (7, 0);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (8, ''Inception'', 12, ''Christopher Nolan'', 148, ''2022-02-04'', ''A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.'', ''https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (8, 3);
        insert into movie_categories(movie_id, categories_id) values (8, 11);
        insert into movie_categories(movie_id, categories_id) values (8, 15);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (9, ''Fight Club'', 12, ''David Fincher'', 139, ''2022-09-01'', ''An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.'', ''https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (9, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (10, ''The Lord of the Rings: The Fellowship of the Ring'', 12, ''Peter Jackson'', 178, ''2022-09-26'', ''A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.'', ''https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (10, 3);
        insert into movie_categories(movie_id, categories_id) values (10, 11);
        insert into movie_categories(movie_id, categories_id) values (10, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (11, ''Forrest Gump'', 12, ''Robert Zemeckis'', 142, ''2021-12-29'', ''The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate and other historical events unfold through the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.'', ''https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY98_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (11, 12);
        insert into movie_categories(movie_id, categories_id) values (11, 16);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (12, ''Il buono, il brutto, il cattivo'', 12, ''Sergio Leone'', 161, ''2022-08-29'', ''A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.'', ''https://m.media-amazon.com/images/M/MV5BOTQ5NDI3MTI4MF5BMl5BanBnXkFtZTgwNDQ4ODE5MDE@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (12, 20);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (13, ''The Lord of the Rings: The Two Towers'', 12, ''Peter Jackson'', 179, ''2022-02-15'', ''While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron''''s new ally, Saruman, and his hordes of Isengard.'', ''https://m.media-amazon.com/images/M/MV5BZGMxZTdjZmYtMmE2Ni00ZTdkLWI5NTgtNjlmMjBiNzU2MmI5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (13, 3);
        insert into movie_categories(movie_id, categories_id) values (13, 11);
        insert into movie_categories(movie_id, categories_id) values (13, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (14, ''The Matrix'', 12, ''Lana Wachowski'', 136, ''2022-02-12'', ''When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.'', ''https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (14, 3);
        insert into movie_categories(movie_id, categories_id) values (14, 15);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (15, ''Goodfellas'', 18, ''Martin Scorsese'', 146, ''2022-03-12'', ''The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.'', ''https://m.media-amazon.com/images/M/MV5BY2NkZjEzMDgtN2RjYy00YzM1LWI4ZmQtMjIwYjFjNmI3ZGEwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (15, 7);
        insert into movie_categories(movie_id, categories_id) values (15, 5);
        insert into movie_categories(movie_id, categories_id) values (15, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (16, ''Star Wars: Episode V - The Empire Strikes Back'', 12, ''Irvin Kershner'', 124, ''2022-08-14'', ''After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader and a bounty hunter named Boba Fett all over the galaxy.'', ''https://m.media-amazon.com/images/M/MV5BYmU1NDRjNDgtMzhiMi00NjZmLTg5NGItZDNiZjU5NTU4OTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (16, 3);
        insert into movie_categories(movie_id, categories_id) values (16, 11);
        insert into movie_categories(movie_id, categories_id) values (16, 13);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (17, ''One Flew Over the Cuckoo''''s Nest'', 12, ''Milos Forman'', 133, ''2022-05-17'', ''A criminal pleads insanity and is admitted to a mental institution, where he rebels against the oppressive nurse and rallies up the scared patients.'', ''https://m.media-amazon.com/images/M/MV5BZjA0OWVhOTAtYWQxNi00YzNhLWI4ZjYtNjFjZTEyYjJlNDVlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (17, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (18, ''Hamilton'', 12, ''Thomas Kail'', 160, ''2022-01-12'', ''The real life of one of America''''s foremost founding fathers and first Secretary of the Treasury, Alexander Hamilton. Captured live on Broadway from the Richard Rodgers Theater with the original Broadway cast.'', ''https://m.media-amazon.com/images/M/MV5BNjViNWRjYWEtZTI0NC00N2E3LTk0NGQtMjY4NTM3OGNkZjY0XkEyXkFqcGdeQXVyMjUxMTY3ODM@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (18, 7);
        insert into movie_categories(movie_id, categories_id) values (18, 12);
        insert into movie_categories(movie_id, categories_id) values (18, 0);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (19, ''Gisaengchung'', 12, ''Bong Joon Ho'', 132, ''2022-03-19'', ''Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.'', ''https://m.media-amazon.com/images/M/MV5BYWZjMjk3ZTItODQ2ZC00NTY5LWE0ZDYtZTI3MjcwN2Q5NTVkXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (19, 1);
        insert into movie_categories(movie_id, categories_id) values (19, 12);
        insert into movie_categories(movie_id, categories_id) values (19, 8);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (20, ''Soorarai Pottru'', 12, ''Sudha Kongara'', 153, ''2022-02-11'', ''Nedumaaran Rajangam "Maara" sets out to make the common man fly and in the process takes on the world''''s most capital intensive industry and several enemies who stand in his way.'', ''https://m.media-amazon.com/images/M/MV5BOTc2ZTlmYmItMDBhYS00YmMzLWI4ZjAtMTI5YTBjOTFiMGEwXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY98_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (20, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (21, ''Interstellar'', 12, ''Christopher Nolan'', 169, ''2022-08-24'', ''A team of explorers travel through a wormhole in space in an attempt to ensure humanity''''s survival.'', ''https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (21, 11);
        insert into movie_categories(movie_id, categories_id) values (21, 12);
        insert into movie_categories(movie_id, categories_id) values (21, 15);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (22, ''Cidade de Deus'', 18, ''Fernando Meirelles'', 130, ''2022-10-18'', ''In the slums of Rio, two kids'''' paths diverge as one struggles to become a photographer and the other a kingpin.'', ''https://m.media-amazon.com/images/M/MV5BOTMwYjc5ZmItYTFjZC00ZGQ3LTlkNTMtMjZiNTZlMWQzNzI5XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (22, 5);
        insert into movie_categories(movie_id, categories_id) values (22, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (23, ''Sen to Chihiro no kamikakushi'', 12, ''Hayao Miyazaki'', 125, ''2022-12-21'', ''During her family''''s move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.'', ''https://m.media-amazon.com/images/M/MV5BMjlmZmI5MDctNDE2YS00YWE0LWE5ZWItZDBhYWQ0NTcxNWRhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (23, 10);
        insert into movie_categories(movie_id, categories_id) values (23, 11);
        insert into movie_categories(movie_id, categories_id) values (23, 14);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (24, ''Saving Private Ryan'', 12, ''Steven Spielberg'', 169, ''2022-04-21'', ''Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.'', ''https://m.media-amazon.com/images/M/MV5BZjhkMDM4MWItZTVjOC00ZDRhLThmYTAtM2I5NzBmNmNlMzI1XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (24, 12);
        insert into movie_categories(movie_id, categories_id) values (24, 9);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (25, ''The Green Mile'', 18, ''Frank Darabont'', 189, ''2022-04-22'', ''The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.'', ''https://m.media-amazon.com/images/M/MV5BMTUxMzQyNjA5MF5BMl5BanBnXkFtZTYwOTU2NTY3._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (25, 5);
        insert into movie_categories(movie_id, categories_id) values (25, 12);
        insert into movie_categories(movie_id, categories_id) values (25, 13);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (26, ''La vita e bella'', 12, ''Roberto Benigni'', 116, ''2022-12-19'', ''When an open-minded Jewish librarian and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp.'', ''https://m.media-amazon.com/images/M/MV5BYmJmM2Q4NmMtYThmNC00ZjRlLWEyZmItZTIwOTBlZDQ3NTQ1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (26, 1);
        insert into movie_categories(movie_id, categories_id) values (26, 12);
        insert into movie_categories(movie_id, categories_id) values (26, 16);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (27, ''Se7en'', 18, ''David Fincher'', 127, ''2022-12-11'', ''Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.'', ''https://m.media-amazon.com/images/M/MV5BOTUwODM5MTctZjczMi00OTk4LTg3NWUtNmVhMTAzNTNjYjcyXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (27, 5);
        insert into movie_categories(movie_id, categories_id) values (27, 12);
        insert into movie_categories(movie_id, categories_id) values (27, 6);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (28, ''The Silence of the Lambs'', 18, ''Jonathan Demme'', 118, ''2022-04-19'', ''A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.'', ''https://m.media-amazon.com/images/M/MV5BNjNhZTk0ZmEtNjJhMi00YzFlLWE1MmEtYzM1M2ZmMGMwMTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (28, 5);
        insert into movie_categories(movie_id, categories_id) values (28, 12);
        insert into movie_categories(movie_id, categories_id) values (28, 8);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (29, ''Star Wars'', 12, ''George Lucas'', 121, ''2022-11-05'', ''Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire''''s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.'', ''https://m.media-amazon.com/images/M/MV5BNzVlY2MwMjktM2E4OS00Y2Y3LWE3ZjctYzhkZGM3YzA1ZWM2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (29, 3);
        insert into movie_categories(movie_id, categories_id) values (29, 11);
        insert into movie_categories(movie_id, categories_id) values (29, 13);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (30, ''Seppuku'', 12, ''Masaki Kobayashi'', 133, ''2022-12-12'', ''When a ronin requesting seppuku at a feudal lord''''s palace is told of the brutal suicide of another ronin who previously visited, he reveals how their pasts are intertwined - and in doing so challenges the clan''''s integrity.'', ''https://m.media-amazon.com/images/M/MV5BYjBmYTQ1NjItZWU5MS00YjI0LTg2OTYtYmFkN2JkMmNiNWVkXkEyXkFqcGdeQXVyMTMxMTY0OTQ@._V1_UY98_CR2,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (30, 3);
        insert into movie_categories(movie_id, categories_id) values (30, 12);
        insert into movie_categories(movie_id, categories_id) values (30, 6);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (31, ''Shichinin no samurai'', 12, ''Akira Kurosawa'', 207, ''2022-02-19'', ''A poor village under attack by bandits recruits seven unemployed samurai to help them defend themselves.'', ''https://m.media-amazon.com/images/M/MV5BOWE4ZDdhNmMtNzE5ZC00NzExLTlhNGMtY2ZhYjYzODEzODA1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY98_CR1,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (31, 3);
        insert into movie_categories(movie_id, categories_id) values (31, 11);
        insert into movie_categories(movie_id, categories_id) values (31, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (32, ''It''''s a Wonderful Life'', 12, ''Frank Capra'', 130, ''2022-08-28'', ''An angel is sent from Heaven to help a desperately frustrated businessman by showing him what life would have been like if he had never existed.'', ''https://m.media-amazon.com/images/M/MV5BZjc4NDZhZWMtNGEzYS00ZWU2LThlM2ItNTA0YzQ0OTExMTE2XkEyXkFqcGdeQXVyNjUwMzI2NzU@._V1_UY98_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (32, 12);
        insert into movie_categories(movie_id, categories_id) values (32, 14);
        insert into movie_categories(movie_id, categories_id) values (32, 13);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (33, ''Joker'', 18, ''Todd Phillips'', 122, ''2022-12-19'', ''In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.'', ''https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (33, 5);
        insert into movie_categories(movie_id, categories_id) values (33, 12);
        insert into movie_categories(movie_id, categories_id) values (33, 8);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (34, ''Whiplash'', 12, ''Damien Chazelle'', 106, ''2022-01-04'', ''A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student''''s potential.'', ''https://m.media-amazon.com/images/M/MV5BOTA5NDZlZGUtMjAxOS00YTRkLTkwYmMtYWQ0NWEwZDZiNjEzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (34, 12);
        insert into movie_categories(movie_id, categories_id) values (34, 4);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (35, ''The Intouchables'', 12, ''Olivier Nakache'', 112, ''2022-04-10'', ''After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.'', ''https://m.media-amazon.com/images/M/MV5BMTYxNDA3MDQwNl5BMl5BanBnXkFtZTcwNTU4Mzc1Nw@@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (35, 7);
        insert into movie_categories(movie_id, categories_id) values (35, 1);
        insert into movie_categories(movie_id, categories_id) values (35, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (36, ''The Prestige'', 12, ''Christopher Nolan'', 130, ''2022-05-31'', ''After a tragic accident, two stage magicians engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.'', ''https://m.media-amazon.com/images/M/MV5BMjA4NDI0MTIxNF5BMl5BanBnXkFtZTYwNTM0MzY2._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (36, 12);
        insert into movie_categories(movie_id, categories_id) values (36, 6);
        insert into movie_categories(movie_id, categories_id) values (36, 15);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (37, ''The Departed'', 18, ''Martin Scorsese'', 151, ''2022-11-30'', ''An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.'', ''https://m.media-amazon.com/images/M/MV5BMTI1MTY2OTIxNV5BMl5BanBnXkFtZTYwNjQ4NjY3._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (37, 5);
        insert into movie_categories(movie_id, categories_id) values (37, 12);
        insert into movie_categories(movie_id, categories_id) values (37, 8);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (38, ''The Pianist'', 12, ''Roman Polanski'', 150, ''2022-04-22'', ''A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.'', ''https://m.media-amazon.com/images/M/MV5BOWRiZDIxZjktMTA1NC00MDQ2LWEzMjUtMTliZmY3NjQ3ODJiXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY98_CR2,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (38, 7);
        insert into movie_categories(movie_id, categories_id) values (38, 12);
        insert into movie_categories(movie_id, categories_id) values (38, 4);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (39, ''Gladiator'', 12, ''Ridley Scott'', 155, ''2022-03-07'', ''A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.'', ''https://m.media-amazon.com/images/M/MV5BMDliMmNhNDEtODUyOS00MjNlLTgxODEtN2U3NzIxMGVkZTA1L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (39, 3);
        insert into movie_categories(movie_id, categories_id) values (39, 11);
        insert into movie_categories(movie_id, categories_id) values (39, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (40, ''American History X'', 12, ''Tony Kaye'', 119, ''2022-02-27'', ''A former neo-nazi skinhead tries to prevent his younger brother from going down the same wrong path that he did.'', ''https://m.media-amazon.com/images/M/MV5BZjA0MTM4MTQtNzY5MC00NzY3LWI1ZTgtYzcxMjkyMzU4MDZiXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (40, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (41, ''The Usual Suspects'', 18, ''Bryan Singer'', 106, ''2022-02-27'', ''A sole survivor tells of the twisty events leading up to a horrific gun battle on a boat, which began when five criminals met at a seemingly random police lineup.'', ''https://m.media-amazon.com/images/M/MV5BYTViNjMyNmUtNDFkNC00ZDRlLThmMDUtZDU2YWE4NGI2ZjVmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (41, 5);
        insert into movie_categories(movie_id, categories_id) values (41, 6);
        insert into movie_categories(movie_id, categories_id) values (41, 8);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (42, ''Leon'', 18, ''Luc Besson'', 110, ''2022-07-17'', ''Mathilda, a 12-year-old girl, is reluctantly taken in by L�on, a professional assassin, after her family is murdered. An unusual relationship forms as she becomes his prot�g�e and learns the assassin''''s trade.'', ''https://m.media-amazon.com/images/M/MV5BODllNWE0MmEtYjUwZi00ZjY3LThmNmQtZjZlMjI2YTZjYmQ0XkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (42, 3);
        insert into movie_categories(movie_id, categories_id) values (42, 5);
        insert into movie_categories(movie_id, categories_id) values (42, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (43, ''The Lion King'', 12, ''Roger Allers'', 88, ''2021-12-25'', ''Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.'', ''https://m.media-amazon.com/images/M/MV5BYTYxNGMyZTYtMjE3MS00MzNjLWFjNmYtMDk3N2FmM2JiM2M1XkEyXkFqcGdeQXVyNjY5NDU4NzI@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (43, 10);
        insert into movie_categories(movie_id, categories_id) values (43, 11);
        insert into movie_categories(movie_id, categories_id) values (43, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (44, ''Terminator 2: Judgment Day'', 12, ''James Cameron'', 137, ''2022-08-12'', ''A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John Connor, from a more advanced and powerful cyborg.'', ''https://m.media-amazon.com/images/M/MV5BMGU2NzRmZjUtOGUxYS00ZjdjLWEwZWItY2NlM2JhNjkxNTFmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (44, 3);
        insert into movie_categories(movie_id, categories_id) values (44, 15);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (45, ''Nuovo Cinema Paradiso'', 12, ''Giuseppe Tornatore'', 155, ''2022-12-07'', ''A filmmaker recalls his childhood when falling in love with the pictures at the cinema of his home village and forms a deep friendship with the cinema''''s projectionist.'', ''https://m.media-amazon.com/images/M/MV5BM2FhYjEyYmYtMDI1Yy00YTdlLWI2NWQtYmEzNzAxOGY1NjY2XkEyXkFqcGdeQXVyNTA3NTIyNDg@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (45, 12);
        insert into movie_categories(movie_id, categories_id) values (45, 16);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (46, ''Hotaru no haka'', 12, ''Isao Takahata'', 89, ''2022-01-07'', ''A young boy and his little sister struggle to survive in Japan during World War II.'', ''https://m.media-amazon.com/images/M/MV5BZmY2NjUzNDQtNTgxNC00M2Q4LTljOWQtMjNjNDBjNWUxNmJlXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (46, 10);
        insert into movie_categories(movie_id, categories_id) values (46, 12);
        insert into movie_categories(movie_id, categories_id) values (46, 9);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (47, ''Back to the Future'', 12, ''Robert Zemeckis'', 116, ''2022-01-19'', ''Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the eccentric scientist Doc Brown.'', ''https://m.media-amazon.com/images/M/MV5BZmU0M2Y1OGUtZjIxNi00ZjBkLTg1MjgtOWIyNThiZWIwYjRiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (47, 11);
        insert into movie_categories(movie_id, categories_id) values (47, 1);
        insert into movie_categories(movie_id, categories_id) values (47, 15);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (48, ''Once Upon a Time in the West'', 12, ''Sergio Leone'', 165, ''2022-12-04'', ''A mysterious stranger with a harmonica joins forces with a notorious desperado to protect a beautiful widow from a ruthless assassin working for the railroad.'', ''https://m.media-amazon.com/images/M/MV5BZGI5MjBmYzYtMzJhZi00NGI1LTk3MzItYjBjMzcxM2U3MDdiXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (48, 20);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description, posterurl, is_recommended)
        values (49, ''Psycho'', 18, ''Alfred Hitchcock'', 109, ''2022-04-20'', ''A Phoenix secretary embezzles $40,000 from her employer''''s client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother.'', ''https://m.media-amazon.com/images/M/MV5BNTQwNDM1YzItNDAxZC00NWY2LTk0M2UtNDIwNWI5OGUyNWUxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg'', false);
        insert into movie_categories(movie_id, categories_id) values (49, 19);
        insert into movie_categories(movie_id, categories_id) values (49, 6);
        insert into movie_categories(movie_id, categories_id) values (49, 8);
    END IF;


END;

'  LANGUAGE PLPGSQL;

DO
'
DECLARE
    tmp   character varying(255);
begin
    tmp = (SELECT setval(''movie_id_seq'', (SELECT MAX(id) FROM movie) + 1));
    tmp = (SELECT setval(''movie_category_id_seq'', (SELECT MAX(id) FROM movie_category) + 1));
    tmp = (SELECT setval(''employee_id_seq'', (SELECT MAX(id) FROM employee) + 1));
end;
'  LANGUAGE PLPGSQL;