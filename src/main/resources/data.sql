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
    IF (NOT EXISTS(SELECT * FROM hall))
    THEN
        insert into hall(id, capacity, hall_no) values (0,100,1);
        insert into hall(id, capacity, hall_no) values (1,100,2);
        insert into hall(id, capacity, hall_no) values (2,100,3);
        insert into hall(id, capacity, hall_no) values (3,100,4);
    END IF;
    IF (NOT EXISTS(SELECT * FROM movie_category))
    THEN
        insert into movie_category(id, category_name)
        values (0, ''crime'');
        insert into movie_category(id, category_name)
        values (1, ''animation'');
        insert into movie_category(id, category_name)
        values (2, ''musical'');
        insert into movie_category(id, category_name)
        values (3, ''drama'');
        insert into movie_category(id, category_name)
        values (4, ''fantasy'');
        insert into movie_category(id, category_name)
        values (5, ''thriller'');
        insert into movie_category(id, category_name)
        values (6, ''music'');
        insert into movie_category(id, category_name)
        values (7, ''action'');
        insert into movie_category(id, category_name)
        values (8, ''horror'');
        insert into movie_category(id, category_name)
        values (9, ''film-noir'');
        insert into movie_category(id, category_name)
        values (10, ''history'');
        insert into movie_category(id, category_name)
        values (11, ''romance'');
        insert into movie_category(id, category_name)
        values (12, ''western'');
        insert into movie_category(id, category_name)
        values (13, ''adventure'');
        insert into movie_category(id, category_name)
        values (14, ''family'');
        insert into movie_category(id, category_name)
        values (15, ''comedy'');
        insert into movie_category(id, category_name)
        values (16, ''sport'');
        insert into movie_category(id, category_name)
        values (17, ''war'');
        insert into movie_category(id, category_name)
        values (18, ''sci-fi'');
        insert into movie_category(id, category_name)
        values (19, ''mystery'');
        insert into movie_category(id, category_name)
        values (20, ''biography'');
    END IF;
    IF (NOT EXISTS(SELECT * FROM movie))
    THEN
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (0, ''The Shawshank Redemption'', 12, ''Frank Darabont'', 142, ''2022-05-01'', ''Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.'');
        insert into movie_categories(movie_id, categories_id) values (0, 3);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (1, ''The Godfather'', 18, ''Francis Ford Coppola'', 175, ''2022-04-19'', ''An organized crime dynasty''''s aging patriarch transfers control of his clandestine empire to his reluctant son.'');
        insert into movie_categories(movie_id, categories_id) values (1, 0);
        insert into movie_categories(movie_id, categories_id) values (1, 3);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (2, ''The Dark Knight'', 18, ''Christopher Nolan'', 152, ''2022-08-03'', ''When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.'');
        insert into movie_categories(movie_id, categories_id) values (2, 7);
        insert into movie_categories(movie_id, categories_id) values (2, 0);
        insert into movie_categories(movie_id, categories_id) values (2, 3);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (3, ''The Godfather: Part II'', 18, ''Francis Ford Coppola'', 202, ''2022-03-05'', ''The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.'');
        insert into movie_categories(movie_id, categories_id) values (3, 0);
        insert into movie_categories(movie_id, categories_id) values (3, 3);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (4, ''12 Angry Men'', 18, ''Sidney Lumet'', 96, ''2022-04-08'', ''A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.'');
        insert into movie_categories(movie_id, categories_id) values (4, 0);
        insert into movie_categories(movie_id, categories_id) values (4, 3);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (5, ''The Lord of the Rings: The Return of the King'', 12, ''Peter Jackson'', 201, ''2022-04-21'', ''Gandalf and Aragorn lead the World of Men against Sauron''''s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.'');
        insert into movie_categories(movie_id, categories_id) values (5, 7);
        insert into movie_categories(movie_id, categories_id) values (5, 13);
        insert into movie_categories(movie_id, categories_id) values (5, 3);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (6, ''Pulp Fiction'', 18, ''Quentin Tarantino'', 154, ''2022-02-23'', ''The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.'');
        insert into movie_categories(movie_id, categories_id) values (6, 0);
        insert into movie_categories(movie_id, categories_id) values (6, 3);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (7, ''Schindler''''s List'', 12, ''Steven Spielberg'', 195, ''2022-03-28'', ''In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.'');
        insert into movie_categories(movie_id, categories_id) values (7, 20);
        insert into movie_categories(movie_id, categories_id) values (7, 3);
        insert into movie_categories(movie_id, categories_id) values (7, 10);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (8, ''Inception'', 12, ''Christopher Nolan'', 148, ''2022-09-25'', ''A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.'');
        insert into movie_categories(movie_id, categories_id) values (8, 7);
        insert into movie_categories(movie_id, categories_id) values (8, 13);
        insert into movie_categories(movie_id, categories_id) values (8, 18);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (9, ''Fight Club'', 12, ''David Fincher'', 139, ''2022-08-08'', ''An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.'');
        insert into movie_categories(movie_id, categories_id) values (9, 3);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (10, ''The Lord of the Rings: The Fellowship of the Ring'', 12, ''Peter Jackson'', 178, ''2022-05-09'', ''A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.'');
        insert into movie_categories(movie_id, categories_id) values (10, 7);
        insert into movie_categories(movie_id, categories_id) values (10, 13);
        insert into movie_categories(movie_id, categories_id) values (10, 3);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (11, ''Forrest Gump'', 12, ''Robert Zemeckis'', 142, ''2022-02-28'', ''The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate and other historical events unfold through the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.'');
        insert into movie_categories(movie_id, categories_id) values (11, 3);
        insert into movie_categories(movie_id, categories_id) values (11, 11);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (12, ''Il buono, il brutto, il cattivo'', 12, ''Sergio Leone'', 161, ''2022-07-23'', ''A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.'');
        insert into movie_categories(movie_id, categories_id) values (12, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (13, ''The Lord of the Rings: The Two Towers'', 12, ''Peter Jackson'', 179, ''2022-01-25'', ''While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron''''s new ally, Saruman, and his hordes of Isengard.'');
        insert into movie_categories(movie_id, categories_id) values (13, 7);
        insert into movie_categories(movie_id, categories_id) values (13, 13);
        insert into movie_categories(movie_id, categories_id) values (13, 3);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (14, ''The Matrix'', 12, ''Lana Wachowski'', 136, ''2022-02-09'', ''When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.'');
        insert into movie_categories(movie_id, categories_id) values (14, 7);
        insert into movie_categories(movie_id, categories_id) values (14, 18);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (15, ''Goodfellas'', 18, ''Martin Scorsese'', 146, ''2022-02-15'', ''The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.'');
        insert into movie_categories(movie_id, categories_id) values (15, 20);
        insert into movie_categories(movie_id, categories_id) values (15, 0);
        insert into movie_categories(movie_id, categories_id) values (15, 3);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (16, ''Star Wars: Episode V - The Empire Strikes Back'', 12, ''Irvin Kershner'', 124, ''2022-04-29'', ''After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader and a bounty hunter named Boba Fett all over the galaxy.'');
        insert into movie_categories(movie_id, categories_id) values (16, 7);
        insert into movie_categories(movie_id, categories_id) values (16, 13);
        insert into movie_categories(movie_id, categories_id) values (16, 4);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (17, ''One Flew Over the Cuckoo''''s Nest'', 12, ''Milos Forman'', 133, ''2022-11-30'', ''A criminal pleads insanity and is admitted to a mental institution, where he rebels against the oppressive nurse and rallies up the scared patients.'');
        insert into movie_categories(movie_id, categories_id) values (17, 3);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (18, ''Hamilton'', 12, ''Thomas Kail'', 160, ''2021-12-13'', ''The real life of one of America''''s foremost founding fathers and first Secretary of the Treasury, Alexander Hamilton. Captured live on Broadway from the Richard Rodgers Theater with the original Broadway cast.'');
        insert into movie_categories(movie_id, categories_id) values (18, 20);
        insert into movie_categories(movie_id, categories_id) values (18, 3);
        insert into movie_categories(movie_id, categories_id) values (18, 10);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (19, ''Gisaengchung'', 12, ''Bong Joon Ho'', 132, ''2021-12-23'', ''Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.'');
        insert into movie_categories(movie_id, categories_id) values (19, 15);
        insert into movie_categories(movie_id, categories_id) values (19, 3);
        insert into movie_categories(movie_id, categories_id) values (19, 5);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (20, ''Soorarai Pottru'', 12, ''Sudha Kongara'', 153, ''2022-11-17'', ''Nedumaaran Rajangam "Maara" sets out to make the common man fly and in the process takes on the world''''s most capital intensive industry and several enemies who stand in his way.'');
        insert into movie_categories(movie_id, categories_id) values (20, 3);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (21, ''Interstellar'', 12, ''Christopher Nolan'', 169, ''2022-06-12'', ''A team of explorers travel through a wormhole in space in an attempt to ensure humanity''''s survival.'');
        insert into movie_categories(movie_id, categories_id) values (21, 13);
        insert into movie_categories(movie_id, categories_id) values (21, 3);
        insert into movie_categories(movie_id, categories_id) values (21, 18);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (22, ''Cidade de Deus'', 18, ''Fernando Meirelles'', 130, ''2022-02-27'', ''In the slums of Rio, two kids'''' paths diverge as one struggles to become a photographer and the other a kingpin.'');
        insert into movie_categories(movie_id, categories_id) values (22, 0);
        insert into movie_categories(movie_id, categories_id) values (22, 3);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (23, ''Sen to Chihiro no kamikakushi'', 12, ''Hayao Miyazaki'', 125, ''2022-10-01'', ''During her family''''s move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.'');
        insert into movie_categories(movie_id, categories_id) values (23, 1);
        insert into movie_categories(movie_id, categories_id) values (23, 13);
        insert into movie_categories(movie_id, categories_id) values (23, 14);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (24, ''Saving Private Ryan'', 12, ''Steven Spielberg'', 169, ''2022-02-27'', ''Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.'');
        insert into movie_categories(movie_id, categories_id) values (24, 3);
        insert into movie_categories(movie_id, categories_id) values (24, 17);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (25, ''The Green Mile'', 18, ''Frank Darabont'', 189, ''2022-03-22'', ''The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.'');
        insert into movie_categories(movie_id, categories_id) values (25, 0);
        insert into movie_categories(movie_id, categories_id) values (25, 3);
        insert into movie_categories(movie_id, categories_id) values (25, 4);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (26, ''La vita e bella'', 12, ''Roberto Benigni'', 116, ''2022-11-13'', ''When an open-minded Jewish librarian and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp.'');
        insert into movie_categories(movie_id, categories_id) values (26, 15);
        insert into movie_categories(movie_id, categories_id) values (26, 3);
        insert into movie_categories(movie_id, categories_id) values (26, 11);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (27, ''Se7en'', 18, ''David Fincher'', 127, ''2022-09-30'', ''Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.'');
        insert into movie_categories(movie_id, categories_id) values (27, 0);
        insert into movie_categories(movie_id, categories_id) values (27, 3);
        insert into movie_categories(movie_id, categories_id) values (27, 19);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (28, ''The Silence of the Lambs'', 18, ''Jonathan Demme'', 118, ''2022-02-26'', ''A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.'');
        insert into movie_categories(movie_id, categories_id) values (28, 0);
        insert into movie_categories(movie_id, categories_id) values (28, 3);
        insert into movie_categories(movie_id, categories_id) values (28, 5);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (29, ''Star Wars'', 12, ''George Lucas'', 121, ''2022-04-15'', ''Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire''''s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.'');
        insert into movie_categories(movie_id, categories_id) values (29, 7);
        insert into movie_categories(movie_id, categories_id) values (29, 13);
        insert into movie_categories(movie_id, categories_id) values (29, 4);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (30, ''Seppuku'', 12, ''Masaki Kobayashi'', 133, ''2022-11-12'', ''When a ronin requesting seppuku at a feudal lord''''s palace is told of the brutal suicide of another ronin who previously visited, he reveals how their pasts are intertwined - and in doing so challenges the clan''''s integrity.'');
        insert into movie_categories(movie_id, categories_id) values (30, 7);
        insert into movie_categories(movie_id, categories_id) values (30, 3);
        insert into movie_categories(movie_id, categories_id) values (30, 19);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (31, ''Shichinin no samurai'', 12, ''Akira Kurosawa'', 207, ''2022-09-19'', ''A poor village under attack by bandits recruits seven unemployed samurai to help them defend themselves.'');
        insert into movie_categories(movie_id, categories_id) values (31, 7);
        insert into movie_categories(movie_id, categories_id) values (31, 13);
        insert into movie_categories(movie_id, categories_id) values (31, 3);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (32, ''It''''s a Wonderful Life'', 12, ''Frank Capra'', 130, ''2022-10-25'', ''An angel is sent from Heaven to help a desperately frustrated businessman by showing him what life would have been like if he had never existed.'');
        insert into movie_categories(movie_id, categories_id) values (32, 3);
        insert into movie_categories(movie_id, categories_id) values (32, 14);
        insert into movie_categories(movie_id, categories_id) values (32, 4);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (33, ''Joker'', 18, ''Todd Phillips'', 122, ''2022-11-01'', ''In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.'');
        insert into movie_categories(movie_id, categories_id) values (33, 0);
        insert into movie_categories(movie_id, categories_id) values (33, 3);
        insert into movie_categories(movie_id, categories_id) values (33, 5);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (34, ''Whiplash'', 12, ''Damien Chazelle'', 106, ''2022-05-02'', ''A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student''''s potential.'');
        insert into movie_categories(movie_id, categories_id) values (34, 3);
        insert into movie_categories(movie_id, categories_id) values (34, 6);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (35, ''The Intouchables'', 12, ''Olivier Nakache'', 112, ''2022-05-02'', ''After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.'');
        insert into movie_categories(movie_id, categories_id) values (35, 20);
        insert into movie_categories(movie_id, categories_id) values (35, 15);
        insert into movie_categories(movie_id, categories_id) values (35, 3);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (36, ''The Prestige'', 12, ''Christopher Nolan'', 130, ''2022-12-04'', ''After a tragic accident, two stage magicians engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.'');
        insert into movie_categories(movie_id, categories_id) values (36, 3);
        insert into movie_categories(movie_id, categories_id) values (36, 19);
        insert into movie_categories(movie_id, categories_id) values (36, 18);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (37, ''The Departed'', 18, ''Martin Scorsese'', 151, ''2022-08-04'', ''An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.'');
        insert into movie_categories(movie_id, categories_id) values (37, 0);
        insert into movie_categories(movie_id, categories_id) values (37, 3);
        insert into movie_categories(movie_id, categories_id) values (37, 5);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (38, ''The Pianist'', 12, ''Roman Polanski'', 150, ''2022-09-25'', ''A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.'');
        insert into movie_categories(movie_id, categories_id) values (38, 20);
        insert into movie_categories(movie_id, categories_id) values (38, 3);
        insert into movie_categories(movie_id, categories_id) values (38, 6);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (39, ''Gladiator'', 12, ''Ridley Scott'', 155, ''2022-08-08'', ''A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.'');
        insert into movie_categories(movie_id, categories_id) values (39, 7);
        insert into movie_categories(movie_id, categories_id) values (39, 13);
        insert into movie_categories(movie_id, categories_id) values (39, 3);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (40, ''American History X'', 12, ''Tony Kaye'', 119, ''2022-06-05'', ''A former neo-nazi skinhead tries to prevent his younger brother from going down the same wrong path that he did.'');
        insert into movie_categories(movie_id, categories_id) values (40, 3);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (41, ''The Usual Suspects'', 18, ''Bryan Singer'', 106, ''2022-09-03'', ''A sole survivor tells of the twisty events leading up to a horrific gun battle on a boat, which began when five criminals met at a seemingly random police lineup.'');
        insert into movie_categories(movie_id, categories_id) values (41, 0);
        insert into movie_categories(movie_id, categories_id) values (41, 19);
        insert into movie_categories(movie_id, categories_id) values (41, 5);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (42, ''Leon'', 18, ''Luc Besson'', 110, ''2022-11-20'', ''Mathilda, a 12-year-old girl, is reluctantly taken in by Leon, a professional assassin, after her family is murdered. An unusual relationship forms as she becomes his student and learns the assassin''''s trade.'');
        insert into movie_categories(movie_id, categories_id) values (42, 7);
        insert into movie_categories(movie_id, categories_id) values (42, 0);
        insert into movie_categories(movie_id, categories_id) values (42, 3);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (43, ''The Lion King'', 12, ''Roger Allers'', 88, ''2022-08-24'', ''Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.'');
        insert into movie_categories(movie_id, categories_id) values (43, 1);
        insert into movie_categories(movie_id, categories_id) values (43, 13);
        insert into movie_categories(movie_id, categories_id) values (43, 3);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (44, ''Terminator 2: Judgment Day'', 12, ''James Cameron'', 137, ''2022-07-07'', ''A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John Connor, from a more advanced and powerful cyborg.'');
        insert into movie_categories(movie_id, categories_id) values (44, 7);
        insert into movie_categories(movie_id, categories_id) values (44, 18);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (45, ''Nuovo Cinema Paradiso'', 12, ''Giuseppe Tornatore'', 155, ''2021-12-23'', ''A filmmaker recalls his childhood when falling in love with the pictures at the cinema of his home village and forms a deep friendship with the cinema''''s projectionist.'');
        insert into movie_categories(movie_id, categories_id) values (45, 3);
        insert into movie_categories(movie_id, categories_id) values (45, 11);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (46, ''Hotaru no haka'', 12, ''Isao Takahata'', 89, ''2022-08-11'', ''A young boy and his little sister struggle to survive in Japan during World War II.'');
        insert into movie_categories(movie_id, categories_id) values (46, 1);
        insert into movie_categories(movie_id, categories_id) values (46, 3);
        insert into movie_categories(movie_id, categories_id) values (46, 17);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (47, ''Back to the Future'', 12, ''Robert Zemeckis'', 116, ''2022-01-29'', ''Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the eccentric scientist Doc Brown.'');
        insert into movie_categories(movie_id, categories_id) values (47, 13);
        insert into movie_categories(movie_id, categories_id) values (47, 15);
        insert into movie_categories(movie_id, categories_id) values (47, 18);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (48, ''Once Upon a Time in the West'', 12, ''Sergio Leone'', 165, ''2022-04-16'', ''A mysterious stranger with a harmonica joins forces with a notorious desperado to protect a beautiful widow from a ruthless assassin working for the railroad.'');
        insert into movie_categories(movie_id, categories_id) values (48, 12);
        insert into movie(id, title, age_restriction, director, duration, premier_date, description)
        values (49, ''Psycho'', 18, ''Alfred Hitchcock'', 109, ''2022-04-02'', ''A Phoenix secretary embezzles $40,000 from her employer''''s client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother.'');
        insert into movie_categories(movie_id, categories_id) values (49, 8);
        insert into movie_categories(movie_id, categories_id) values (49, 19);
        insert into movie_categories(movie_id, categories_id) values (49, 5);
        END IF;
END;
'  LANGUAGE PLPGSQL;
