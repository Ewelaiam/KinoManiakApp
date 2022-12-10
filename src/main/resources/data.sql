insert into role(id,role_name) values (0,'admin');
insert into role(id,role_name) values (1,'manager');
insert into role(id,role_name) values (2,'cashier');

-- insert into employee(id, mail, name, password, sur_name, role_id)
-- values(0,'admin@mail.com','Adam','admin','Adminski',0);
-- insert into employee(id, mail, name, password, sur_name, role_id)
-- values(1,'cashier1@mail.com','Jan','cashier','Kowalski',2);
-- insert into employee(id, mail, name, password, sur_name, role_id)
-- values(2,'cashier2@mail.com','Michal','cashier','Kowalski',2);
-- insert into employee(id, mail, name, password, sur_name, role_id)
-- values(3,'manager@mail.com','Magda','manager','Nowak',1);

insert into hall(id, capacity, hall_no) values (0,100,1);
insert into hall(id, capacity, hall_no) values (1,100,2);
insert into hall(id, capacity, hall_no) values (2,100,3);
insert into hall(id, capacity, hall_no) values (3,100,4);


insert into movie_category(id,category_name)
values(0,'comedy');
insert into movie_category(id,category_name)
values(1,'fantasy');
insert into movie_category(id,category_name)
values(2,'horror');
insert into movie_category(id,category_name)
values(3,'action');
insert into movie_category(id,category_name)
values(4,'film-noir');
insert into movie_category(id,category_name)
values(5,'mystery');
insert into movie_category(id,category_name)
values(6,'crime');
insert into movie_category(id,category_name)
values(7,'biography');
insert into movie_category(id,category_name)
values(8,'drama');
insert into movie_category(id,category_name)
values(9,'adventure');
insert into movie_category(id,category_name)
values(10,'animation');
insert into movie_category(id,category_name)
values(11,'western');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(0, 'The Shawshank Redemption', 12, 'Frank Darabont', 142, '2022-06-04', 8, 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(1, 'The Godfather', 18, 'Francis Ford Coppola', 175, '2022-03-14', 6, 'An organized crime dynasty''s aging patriarch transfers control of his clandestine empire to his reluctant son.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(2, 'The Dark Knight', 12, 'Christopher Nolan', 152, '2022-11-06', 3, 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(3, 'The Godfather: Part II', 18, 'Francis Ford Coppola', 202, '2022-05-01', 6, 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(4, '12 Angry Men', 18, 'Sidney Lumet', 96, '2022-01-03', 6, 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(5, 'The Lord of the Rings: The Return of the King', 12, 'Peter Jackson', 201, '2022-09-04', 3, 'Gandalf and Aragorn lead the World of Men against Sauron''s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(6, 'Pulp Fiction', 18, 'Quentin Tarantino', 154, '2022-07-06', 6, 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(7, 'Schindler''s List', 8, 'Steven Spielberg', 195, '2022-11-10', 7, 'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(8, 'Inception', 12, 'Christopher Nolan', 148, '2022-06-12', 3, 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(9, 'Fight Club', 12, 'David Fincher', 139, '2022-02-20', 8, 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(10, 'The Lord of the Rings: The Fellowship of the Ring', 12, 'Peter Jackson', 178, '2022-06-21', 3, 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(11, 'Forrest Gump', 12, 'Robert Zemeckis', 142, '2022-03-30', 8, 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate and other historical events unfold through the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(12, 'Il buono, il brutto, il cattivo', 12, 'Sergio Leone', 161, '2022-03-20', 11, 'A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(13, 'The Lord of the Rings: The Two Towers', 12, 'Peter Jackson', 179, '2022-01-28', 3, 'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron''s new ally, Saruman, and his hordes of Isengard.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(14, 'The Matrix', 12, 'Lana Wachowski', 136, '2022-11-25', 3, 'When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(15, 'Goodfellas', 8, 'Martin Scorsese', 146, '2022-04-13', 7, 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(16, 'Star Wars: Episode V - The Empire Strikes Back', 12, 'Irvin Kershner', 124, '2022-04-25', 3, 'After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader and a bounty hunter named Boba Fett all over the galaxy.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(17, 'One Flew Over the Cuckoo''s Nest', 12, 'Milos Forman', 133, '2022-07-12', 8, 'A criminal pleads insanity and is admitted to a mental institution, where he rebels against the oppressive nurse and rallies up the scared patients.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(18, 'Hamilton', 8, 'Thomas Kail', 160, '2022-03-05', 7, 'The real life of one of America''s foremost founding fathers and first Secretary of the Treasury, Alexander Hamilton. Captured live on Broadway from the Richard Rodgers Theater with the original Broadway cast.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(19, 'Gisaengchung', 12, 'Bong Joon Ho', 132, '2021-12-23', 0, 'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(20, 'Soorarai Pottru', 12, 'Sudha Kongara', 153, '2022-06-25', 8, 'Nedumaaran Rajangam "Maara" sets out to make the common man fly and in the process takes on the world''s most capital intensive industry and several enemies who stand in his way.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(21, 'Interstellar', 12, 'Christopher Nolan', 169, '2022-08-08', 9, 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity''s survival.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(22, 'Cidade de Deus', 18, 'Fernando Meirelles', 130, '2022-10-07', 6, 'In the slums of Rio, two kids'' paths diverge as one struggles to become a photographer and the other a kingpin.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(23, 'Sen to Chihiro no kamikakushi', 8, 'Hayao Miyazaki', 125, '2022-06-17', 10, 'During her family''s move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(24, 'Saving Private Ryan', 12, 'Steven Spielberg', 169, '2022-02-23', 8, 'Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(25, 'The Green Mile', 18, 'Frank Darabont', 189, '2022-09-27', 6, 'The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(26, 'La vita e bella', 12, 'Roberto Benigni', 116, '2022-07-30', 0, 'When an open-minded Jewish librarian and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(27, 'Se7en', 18, 'David Fincher', 127, '2022-09-06', 6, 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(28, 'The Silence of the Lambs', 18, 'Jonathan Demme', 118, '2022-04-19', 6, 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(29, 'Star Wars', 12, 'George Lucas', 121, '2022-02-16', 3, 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire''s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(30, 'Seppuku', 12, 'Masaki Kobayashi', 133, '2022-11-07', 3, 'When a ronin requesting seppuku at a feudal lord''s palace is told of the brutal suicide of another ronin who previously visited, he reveals how their pasts are intertwined - and in doing so challenges the clan''s integrity.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(31, 'Shichinin no samurai', 12, 'Akira Kurosawa', 207, '2022-03-26', 3, 'A poor village under attack by bandits recruits seven unemployed samurai to help them defend themselves.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(32, 'It''s a Wonderful Life', 12, 'Frank Capra', 130, '2022-07-23', 8, 'An angel is sent from Heaven to help a desperately frustrated businessman by showing him what life would have been like if he had never existed.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(33, 'Joker', 18, 'Todd Phillips', 122, '2022-08-29', 6, 'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(34, 'Whiplash', 12, 'Damien Chazelle', 106, '2022-03-12', 8, 'A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student''s potential.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(35, 'The Intouchables', 8, 'Olivier Nakache', 112, '2022-09-24', 7, 'After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(36, 'The Prestige', 12, 'Christopher Nolan', 130, '2022-09-27', 8, 'After a tragic accident, two stage magicians engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(37, 'The Departed', 18, 'Martin Scorsese', 151, '2021-12-14', 6, 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(38, 'The Pianist', 8, 'Roman Polanski', 150, '2022-08-16', 7, 'A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(39, 'Gladiator', 12, 'Ridley Scott', 155, '2022-05-04', 3, 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(40, 'American History X', 12, 'Tony Kaye', 119, '2022-03-20', 8, 'A former neo-nazi skinhead tries to prevent his younger brother from going down the same wrong path that he did.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(41, 'The Usual Suspects', 18, 'Bryan Singer', 106, '2022-01-23', 6, 'A sole survivor tells of the twisty events leading up to a horrific gun battle on a boat, which began when five criminals met at a seemingly random police lineup.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(42, 'Laon', 12, 'Luc Besson', 110, '2022-05-16', 3, 'Mathilda, a 12-year-old girl, is reluctantly taken in by Laon, a professional assassin, after her family is murdered. An unusual relationship forms as she becomes his protagae and learns the assassin''s trade.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(43, 'The Lion King', 8, 'Roger Allers', 88, '2022-03-12', 10, 'Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(44, 'Terminator 2: Judgment Day', 12, 'James Cameron', 137, '2022-06-27', 3, 'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John Connor, from a more advanced and powerful cyborg.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(45, 'Nuovo Cinema Paradiso', 12, 'Giuseppe Tornatore', 155, '2022-12-08', 8, 'A filmmaker recalls his childhood when falling in love with the pictures at the cinema of his home village and forms a deep friendship with the cinema''s projectionist.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(46, 'Hotaru no haka', 8, 'Isao Takahata', 89, '2022-09-13', 10, 'A young boy and his little sister struggle to survive in Japan during World War II.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(47, 'Back to the Future', 12, 'Robert Zemeckis', 116, '2022-08-20', 9, 'Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the eccentric scientist Doc Brown.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(48, 'Once Upon a Time in the West', 12, 'Sergio Leone', 165, '2022-10-16', 11, 'A mysterious stranger with a harmonica joins forces with a notorious desperado to protect a beautiful widow from a ruthless assassin working for the railroad.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(49, 'Psycho', 18, 'Alfred Hitchcock', 109, '2022-09-15', 2, 'A Phoenix secretary embezzles $40,000 from her employer''s client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(50, 'Casablanca', 12, 'Michael Curtiz', 102, '2022-03-23', 8, 'A cynical expatriate American cafe owner struggles to decide whether or not to help his former lover and her fugitive husband escape the Nazis in French Morocco.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(51, 'Modern Times', 12, 'Charles Chaplin', 87, '2022-10-07', 0, 'The Tramp struggles to live in modern industrial society with the help of a young homeless woman.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(52, 'City Lights', 12, 'Charles Chaplin', 87, '2022-05-06', 0, 'With the aid of a wealthy erratic tippler, a dewy-eyed tramp who has fallen in love with a sightless flower girl accumulates money to be able to help her medically.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(53, 'Capharnaam', 12, 'Nadine Labaki', 126, '2022-08-06', 8, 'While serving a five-year sentence for a violent crime, a 12-year-old boy sues his parents for neglect.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(54, 'Ayla: The Daughter of War', 8, 'Can Ulkay', 125, '2022-02-07', 7, 'In 1950, amid-st the ravages of the Korean War, Sergeant Saleyman stumbles upon a half-frozen little girl, with no parents and no help in sight. Frantic, scared and on the verge of death, ...                See full summaryaa');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(55, 'Vikram Vedha', 12, 'Gayatri', 147, '2022-10-09', 3, 'Vikram, a no-nonsense police officer, accompanied by Simon, his partner, is on the hunt to capture Vedha, a smuggler and a murderer. Vedha tries to change Vikram''s life, which leads to a conflict.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(56, 'Kimi no na wa.', 8, 'Makoto Shinkai', 106, '2022-09-30', 10, 'Two strangers find themselves linked in a bizarre way. When a connection forms, will distance be the only thing to keep them apart?');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(57, 'Dangal', 12, 'Nitesh Tiwari', 161, '2022-05-30', 3, 'Former wrestler Mahavir Singh Phogat and his two wrestler daughters struggle towards glory at the Commonwealth Games in the face of societal oppression.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(58, 'Spider-Man: Into the Spider-Verse', 8, 'Bob Persichetti', 117, '2022-07-25', 10, 'Teen Miles Morales becomes the Spider-Man of his universe, and must join with five spider-powered individuals from other dimensions to stop a threat for all realities.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(59, 'Avengers: Endgame', 12, 'Anthony Russo', 181, '2022-01-07', 3, 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos'' actions and restore balance to the universe.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(60, 'Avengers: Infinity War', 12, 'Anthony Russo', 149, '2022-05-29', 3, 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(61, 'Coco', 8, 'Lee Unkrich', 105, '2022-07-02', 10, 'Aspiring musician Miguel, confronted with his family''s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(62, 'Django Unchained', 12, 'Quentin Tarantino', 165, '2022-02-01', 8, 'With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(63, 'The Dark Knight Rises', 12, 'Christopher Nolan', 164, '2022-09-30', 3, 'Eight years after the Joker''s reign of anarchy, Batman, with the help of the enigmatic Catwoman, is forced from his exile to save Gotham City from the brutal guerrilla terrorist Bane.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(64, '3 Idiots', 12, 'Rajkumar Hirani', 170, '2022-08-12', 0, 'Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend who inspired them to think differently, even as the rest of the world called them "idiots".');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(65, 'Taare Zameen Par', 12, 'Aamir Khan', 165, '2022-05-03', 8, 'An eight-year-old boy is thought to be a lazy trouble-maker, until the new art teacher has the patience and compassion to discover the real problem behind his struggles in school.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(66, 'WALLaE', 8, 'Andrew Stanton', 98, '2022-07-10', 10, 'In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(67, 'The Lives of Others', 12, 'Florian Henckel von Donnersmarck', 137, '2021-12-31', 8, 'In 1984 East Berlin, an agent of the secret police, conducting surveillance on a writer and his lover, finds himself becoming increasingly absorbed by their lives.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(68, 'Oldeuboi', 12, 'Chan-wook Park', 101, '2022-10-17', 3, 'After being kidnapped and imprisoned for fifteen years, Oh Dae-Su is released, only to find that he must find his captor in five days.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(69, 'Memento', 12, 'Christopher Nolan', 113, '2022-11-20', 5, 'A man with short-term memory loss attempts to track down his wife''s murderer.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(70, 'Mononoke-hime', 8, 'Hayao Miyazaki', 134, '2022-02-27', 10, 'On a journey to find the cure for a Tatarigami''s curse, Ashitaka finds himself in the middle of a war between the forest gods and Tatara, a mining colony. In this quest he also meets San, the Mononoke Hime.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(71, 'Once Upon a Time in America', 18, 'Sergio Leone', 229, '2022-11-06', 6, 'A former Prohibition-era Jewish gangster returns to the Lower East Side of Manhattan over thirty years later, where he once again must confront the ghosts and regrets of his old life.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(72, 'Raiders of the Lost Ark', 12, 'Steven Spielberg', 115, '2022-04-21', 3, 'In 1936, archaeologist and adventurer Indiana Jones is hired by the U.S. government to find the Ark of the Covenant before Adolf Hitler''s Nazis can obtain its awesome powers.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(73, 'The Shining', 12, 'Stanley Kubrick', 146, '2022-06-06', 8, 'A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(74, 'Apocalypse Now', 12, 'Francis Ford Coppola', 147, '2022-02-08', 8, 'A U.S. Army officer serving in Vietnam is tasked with assassinating a renegade Special Forces Colonel who sees himself as a god.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(75, 'Alien', 18, 'Ridley Scott', 117, '2022-12-09', 2, 'After a space merchant vessel receives an unknown transmission as a distress call, one of the crew is attacked by a mysterious life form and they soon realize that its life cycle has merely begun.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(76, 'Anand', 12, 'Hrishikesh Mukherjee', 122, '2022-07-22', 8, 'The story of a terminally ill man who wishes to live life to the fullest before the inevitable occurs, as told by his best friend.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(77, 'Tengoku to jigoku', 18, 'Akira Kurosawa', 143, '2022-09-28', 6, 'An executive of a shoe company becomes a victim of extortion when his chauffeur''s son is kidnapped and held for ransom.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(78, 'Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb', 12, 'Stanley Kubrick', 95, '2022-07-20', 0, 'An insane general triggers a path to nuclear holocaust that a War Room full of politicians and generals frantically tries to stop.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(79, 'Witness for the Prosecution', 18, 'Billy Wilder', 116, '2022-06-02', 6, 'A veteran British barrister must defend his client in a murder trial that has surprise after surprise.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(80, 'Paths of Glory', 12, 'Stanley Kubrick', 88, '2022-05-08', 8, 'After refusing to attack an enemy position, a general accuses the soldiers of cowardice and their commanding officer must defend them.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(81, 'Rear Window', 12, 'Alfred Hitchcock', 112, '2022-09-08', 5, 'A wheelchair-bound photographer spies on his neighbors from his apartment window and becomes convinced one of them has committed murder.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(82, 'Sunset Blvd.', 12, 'Billy Wilder', 110, '2022-02-05', 8, 'A screenwriter develops a dangerous relationship with a faded film star determined to make a triumphant return.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(83, 'The Great Dictator', 12, 'Charles Chaplin', 125, '2022-01-10', 0, 'Dictator Adenoid Hynkel tries to expand his empire while a poor Jewish barber tries to avoid persecution from Hynkel''s regime.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(84, '1917', 12, 'Sam Mendes', 119, '2022-05-15', 8, 'April 6th, 1917. As a regiment assembles to wage war deep in enemy territory, two soldiers are assigned to race against time and deliver a message that will stop 1,600 men from walking straight into a deadly trap.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(85, 'Tumbbad', 12, 'Rahi Anil Barve', 104, '2022-08-25', 8, 'A mythological story about a goddess who created the entire universe. The plot revolves around the consequences when humans build a temple for her first-born.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(86, 'Andhadhun', 18, 'Sriram Raghavan', 139, '2022-01-10', 6, 'A series of mysterious events change the life of a blind pianist, who must now report a crime that he should technically know nothing of.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(87, 'Drishyam', 18, 'Jeethu Joseph', 160, '2022-03-24', 6, 'A man goes to extreme lengths to save his family from punishment after the family commits an accidental crime.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(88, 'Jagten', 12, 'Thomas Vinterberg', 115, '2022-08-08', 8, 'A teacher lives a lonely life, all the while struggling over his son''s custody. His life slowly gets better as he finds love and receives good news from his son, but his new luck is about to be brutally shattered by an innocent little lie.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(89, 'Jodaeiye Nader az Simin', 12, 'Asghar Farhadi', 123, '2022-09-16', 8, 'A married couple are faced with a difficult decision - to improve the life of their child by moving to another country or to stay in Iran and look after a deteriorating parent who has Alzheimer''s disease.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(90, 'Incendies', 12, 'Denis Villeneuve', 131, '2022-01-18', 8, 'Twins journey to the Middle East to discover their family history and fulfill their mother''s last wishes.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(91, 'Miracle in cell NO.7', 12, 'Mehmet Ada aztekin', 132, '2022-12-03', 8, 'A story of love between a mentally-ill father who was wrongly accused of murder and his lovely six years old daughter. The prison would be their home. Based on the 2013 Korean movie 7-beon-bang-ui seon-mul (2013).');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(92, 'Babam ve Oglum', 12, 'aagan Irmak', 112, '2022-07-16', 8, 'The family of a left-wing journalist is torn apart after the military coup of Turkey in 1980.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(93, 'Inglourious Basterds', 12, 'Quentin Tarantino', 153, '2022-07-10', 9, 'In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner''s vengeful plans for the same.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(94, 'Eternal Sunshine of the Spotless Mind', 12, 'Michel Gondry', 108, '2021-12-12', 8, 'When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(95, 'Amalie', 12, 'Jean-Pierre Jeunet', 122, '2022-09-09', 0, 'Amalie is an innocent and naive girl in Paris with her own sense of justice. She decides to help those around her and, along the way, discovers love.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(96, 'Snatch', 12, 'Guy Ritchie', 104, '2022-04-03', 0, 'Unscrupulous boxing promoters, violent bookmakers, a Russian gangster, incompetent amateur robbers and supposedly Jewish jewelers fight to track down a priceless stolen diamond.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(97, 'Requiem for a Dream', 12, 'Darren Aronofsky', 102, '2022-01-19', 8, 'The drug-induced utopias of four Coney Island people are shattered when their addictions run deep.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(98, 'American Beauty', 12, 'Sam Mendes', 122, '2022-08-03', 8, 'A sexually frustrated suburban father has a mid-life crisis after becoming infatuated with his daughter''s best friend.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(99, 'Good Will Hunting', 12, 'Gus Van Sant', 126, '2022-01-11', 8, 'Will Hunting, a janitor at M.I.T., has a gift for mathematics, but needs help from a psychologist to find direction in his life.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(100, 'Bacheha-Ye aseman', 12, 'Majid Majidi', 89, '2022-07-16', 8, 'After a boy loses his sister''s pair of shoes, he goes on a series of adventures in order to find them. When he can''t, he tries a new way to "win" a new pair.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(101, 'Toy Story', 8, 'John Lasseter', 81, '2021-12-28', 10, 'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy''s room.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(102, 'Braveheart', 8, 'Mel Gibson', 178, '2022-08-22', 7, 'Scottish warrior William Wallace leads his countrymen in a rebellion to free his homeland from the tyranny of King Edward I of England.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(103, 'Reservoir Dogs', 18, 'Quentin Tarantino', 99, '2022-10-09', 6, 'When a simple jewelry heist goes horribly wrong, the surviving criminals begin to suspect that one of them is a police informant.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(104, 'Full Metal Jacket', 12, 'Stanley Kubrick', 116, '2022-01-13', 8, 'A pragmatic U.S. Marine observes the dehumanizing effects the Vietnam War has on his fellow recruits from their brutal boot camp training to the bloody street fighting in Hue.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(105, 'Idi i smotri', 12, 'Elem Klimov', 142, '2022-03-25', 8, 'After finding an old rifle, a young boy joins the Soviet resistance movement against ruthless German forces and experiences the horrors of World War II.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(106, 'Aliens', 12, 'James Cameron', 137, '2022-07-10', 3, 'Fifty-seven years after surviving an apocalyptic attack aboard her space vessel by merciless space creatures, Officer Ripley awakens from hyper-sleep and tries to warn anyone who will listen about the predators.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(107, 'Amadeus', 8, 'Milos Forman', 160, '2022-06-03', 7, 'The life, success and troubles of Wolfgang Amadeus Mozart, as told by Antonio Salieri, the contemporaneous composer who was insanely jealous of Mozart''s talent and claimed to have murdered him.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(108, 'Scarface', 18, 'Brian De Palma', 170, '2022-01-29', 6, 'In 1980 Miami, a determined Cuban immigrant takes over a drug cartel and succumbs to greed.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(109, 'Star Wars: Episode VI - Return of the Jedi', 12, 'Richard Marquand', 131, '2021-12-13', 3, 'After a daring mission to rescue Han Solo from Jabba the Hutt, the Rebels dispatch to Endor to destroy the second Death Star. Meanwhile, Luke struggles to help Darth Vader back from the dark side without falling into the Emperor''s trap.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(110, 'Das Boot', 12, 'Wolfgang Petersen', 149, '2022-11-22', 9, 'The claustrophobic world of a WWII German U-boat; boredom, filth and sheer terror.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(111, 'Taxi Driver', 18, 'Martin Scorsese', 114, '2022-08-11', 6, 'A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action by attempting to liberate a presidential campaign worker and an underage prostitute.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(112, 'The Sting', 12, 'George Roy Hill', 129, '2022-06-02', 0, 'Two grifters team up to pull off the ultimate con.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(113, 'A Clockwork Orange', 18, 'Stanley Kubrick', 136, '2022-10-03', 6, 'In the future, a sadistic gang leader is imprisoned and volunteers for a conduct-aversion experiment, but it doesn''t go as planned.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(114, '2001: A Space Odyssey', 12, 'Stanley Kubrick', 149, '2022-12-09', 9, 'After discovering a mysterious artifact buried beneath the Lunar surface, mankind sets off on a quest to find its origins with help from intelligent supercomputer H.A.L. 9000.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(115, 'Per qualche dollaro in piu', 12, 'Sergio Leone', 132, '2022-08-26', 11, 'Two bounty hunters with the same intentions team up to track down a Western outlaw.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(116, 'Lawrence of Arabia', 12, 'David Lean', 228, '2022-01-12', 9, 'The story of T.E. Lawrence, the English officer who successfully united and led the diverse, often warring, Arab tribes during World War I in order to fight the Turks.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(117, 'The Apartment', 12, 'Billy Wilder', 125, '2022-01-22', 0, 'A man tries to rise in his company by letting its executives use his apartment for trysts, but complications and a romance of his own ensue.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(118, 'North by Northwest', 12, 'Alfred Hitchcock', 136, '2021-12-22', 9, 'A New York City advertising executive goes on the run after being mistaken for a government agent by a group of foreign spies.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(119, 'Vertigo', 12, 'Alfred Hitchcock', 128, '2022-04-13', 5, 'A former police detective juggles wrestling with his personal demons and becoming obsessed with a hauntingly beautiful woman.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(120, 'Singin'' in the Rain', 12, 'Stanley Donen', 103, '2022-03-27', 0, 'A silent film production company and cast make a difficult transition to sound.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(121, 'Ikiru', 12, 'Akira Kurosawa', 143, '2022-10-21', 8, 'A bureaucrat tries to find a meaning in his life after he discovers he has terminal cancer.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(122, 'Ladri di biciclette', 12, 'Vittorio De Sica', 89, '2022-10-16', 8, 'In post-war Italy, a working-class man''s bicycle is stolen. He and his son set out to find it.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(123, 'Double Indemnity', 18, 'Billy Wilder', 107, '2022-01-22', 6, 'An insurance representative lets himself be talked by a seductive housewife into a murder/insurance fraud scheme that arouses the suspicion of an insurance investigator.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(124, 'Citizen Kane', 12, 'Orson Welles', 119, '2022-05-24', 8, 'Following the death of publishing tycoon Charles Foster Kane, reporters scramble to uncover the meaning of his final utterance; ''Rosebud''.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(125, 'M - Eine Stadt sucht einen Marder', 18, 'Fritz Lang', 117, '2022-12-02', 6, 'When the police in a German city are unable to catch a child-murderer, other criminals join in the manhunt.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(126, 'Metropolis', 12, 'Fritz Lang', 153, '2022-07-30', 8, 'In a futuristic city sharply divided between the working class and the city planners, the son of the city''s mastermind falls in love with a working-class prophet who predicts the coming of a savior to mediate their differences.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(127, 'The Kid', 12, 'Charles Chaplin', 68, '2022-04-12', 0, 'The Tramp cares for an abandoned child, but events put that relationship in jeopardy.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(128, 'Chhichhore', 12, 'Nitesh Tiwari', 143, '2022-02-27', 0, 'A tragic incident forces Anirudh, a middle-aged man, to take a trip down memory lane and reminisce his college days along with his friends, who were labelled as losers.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(129, 'Uri: The Surgical Strike', 12, 'Aditya Dhar', 138, '2022-04-22', 3, 'Indian army special forces execute a covert operation, avenging the killing of fellow army men at their base by a terrorist group.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(130, 'K.G.F: Chapter 1', 12, 'Prashanth Neel', 156, '2022-09-22', 3, 'In the 1970s, a fierce rebel rises against brutal oppression and becomes the symbol of hope to legions of downtrodden people.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(131, 'Green Book', 8, 'Peter Farrelly', 130, '2022-01-15', 7, 'A working-class Italian-American bouncer becomes the driver of an African-American classical pianist on a tour of venues through the 1960s American South.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(132, 'Three Billboards Outside Ebbing, Missouri', 12, 'Martin McDonagh', 115, '2022-09-12', 0, 'A mother personally challenges the local authorities to solve her daughter''s murder when they fail to catch the culprit.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(133, 'Talvar', 18, 'Meghna Gulzar', 132, '2022-11-18', 6, 'An experienced investigator confronts several conflicting theories about the perpetrators of a violent double homicide.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(134, 'Baahubali 2: The Conclusion', 12, 'S.S. Rajamouli', 167, '2022-08-15', 3, 'When Shiva, the son of Bahubali, learns about his heritage, he begins to look for answers. His story is juxtaposed with past events that unfolded in the Mahishmati Kingdom.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(135, 'Klaus', 8, 'Sergio Pablos', 96, '2022-09-19', 10, 'A simple act of kindness always sparks another, even in a frozen, faraway place. When Smeerensburg''s new postman, Jesper, befriends toymaker Klaus, their gifts melt an age-old feud and deliver a sleigh full of holiday traditions.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(136, 'Drishyam', 18, 'Nishikant Kamat', 163, '2022-06-26', 6, 'Desperate measures are taken by a man who tries to save his family from the dark side of the law, after they commit an unexpected crime.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(137, 'Queen', 12, 'Vikas Bahl', 146, '2021-12-10', 9, 'A Delhi girl from a traditional family sets out on a solo honeymoon after her marriage gets cancelled.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(138, 'Mandariinid', 12, 'Zaza Urushadze', 87, '2022-02-06', 8, 'In 1992, war rages in Abkhazia, a breakaway region of Georgia. An Estonian man Ivo has decided to stay behind and harvest his crops of tangerines. In a bloody conflict at his door, a wounded man is left behind, and Ivo takes him in.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(139, 'Bhaag Milkha Bhaag', 8, 'Rakeysh Omprakash Mehra', 186, '2022-03-21', 7, 'The truth behind the ascension of Milkha Singh who was scarred because of the India-Pakistan partition.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(140, 'Gangs of Wasseypur', 12, 'Anurag Kashyap', 321, '2022-03-26', 3, 'A clash between Sultan and Shahid Khan leads to the expulsion of Khan from Wasseypur, and ignites a deadly blood feud spanning three generations.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(141, 'Udaan', 12, 'Vikramaditya Motwane', 134, '2022-10-27', 8, 'Expelled from his school, a 16-year old boy returns home to his abusive and oppressive father.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(142, 'Paan Singh Tomar', 12, 'Tigmanshu Dhulia', 135, '2022-11-08', 3, 'The story of Paan Singh Tomar, an Indian athlete and seven-time national steeplechase champion who becomes one of the most feared dacoits in Chambal Valley after his retirement.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(143, 'El secreto de sus ojos', 12, 'Juan Josa Campanella', 129, '2022-05-04', 8, 'A retired legal counselor writes a novel hoping to find closure for one of his past unresolved homicide cases and for his unreciprocated love with his superior - both of which still haunt him decades later.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(144, 'Warrior', 12, 'Gavin O''Connor', 140, '2022-10-23', 3, 'The youngest son of an alcoholic former boxer returns home, where he''s trained by his father for competition in a mixed martial arts tournament - a path that puts the fighter on a collision course with his estranged, older brother.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(145, 'Shutter Island', 12, 'Martin Scorsese', 138, '2022-02-09', 5, 'In 1954, a U.S. Marshal investigates the disappearance of a murderer who escaped from a hospital for the criminally insane.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(146, 'Up', 8, 'Pete Docter', 96, '2022-05-26', 10, '78-year-old Carl Fredricksen travels to Paradise Falls in his house equipped with balloons, inadvertently taking a young stowaway.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(147, 'The Wolf of Wall Street', 8, 'Martin Scorsese', 180, '2022-10-29', 7, 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(148, 'Chak De! India', 12, 'Shimit Amin', 153, '2022-10-13', 8, 'Kabir Khan is the coach of the Indian Women''s National Hockey Team and his dream is to make his all girls team emerge victorious against all odds.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(149, 'There Will Be Blood', 12, 'Paul Thomas Anderson', 158, '2022-08-06', 8, 'A story of family, religion, hatred, oil and madness, focusing on a turn-of-the-century prospector in the early days of the business.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(150, 'Pan''s Labyrinth', 12, 'Guillermo del Toro', 118, '2022-02-14', 8, 'In the Falangist Spain of 1944, the bookish young stepdaughter of a sadistic army officer escapes into an eerie but captivating fantasy world.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(151, 'Toy Story 3', 8, 'Lee Unkrich', 103, '2022-04-22', 10, 'The toys are mistakenly delivered to a day-care center instead of the attic right before Andy leaves for college, and it''s up to Woody to convince the other toys that they weren''t abandoned and to return home.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(152, 'V for Vendetta', 12, 'James McTeigue', 132, '2022-06-18', 3, 'In a future British tyranny, a shadowy freedom fighter, known only by the alias of "V", plots to overthrow it with the help of a young woman.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(153, 'Rang De Basanti', 12, 'Rakeysh Omprakash Mehra', 167, '2022-09-03', 0, 'The story of six young Indians who assist an English woman to film a documentary on the freedom fighters from their past, and the events that lead them to relive the long-forgotten saga of freedom.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(154, 'Black', 12, 'Sanjay Leela Bhansali', 122, '2022-07-17', 8, 'The cathartic tale of a young woman who can''t see, hear or talk and the teacher who brings a ray of light into her dark world.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(155, 'Batman Begins', 12, 'Christopher Nolan', 140, '2022-09-01', 3, 'After training with his mentor, Batman begins his fight to free crime-ridden Gotham City from corruption.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(156, 'Swades: We, the People', 12, 'Ashutosh Gowariker', 210, '2022-05-02', 8, 'A successful Indian scientist returns to an Indian village to take his nanny to America with him and in the process rediscovers his roots.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(157, 'Der Untergang', 8, 'Oliver Hirschbiegel', 156, '2022-11-15', 7, 'Traudl Junge, the final secretary for Adolf Hitler, tells of the Nazi dictator''s final days in his Berlin bunker at the end of WWII.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(158, 'Hauru no ugoku shiro', 8, 'Hayao Miyazaki', 119, '2022-11-20', 10, 'When an unconfident young woman is cursed with an old body by a spiteful witch, her only chance of breaking the spell lies with a self-indulgent yet insecure young wizard and his companions in his legged, walking castle.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(159, 'A Beautiful Mind', 8, 'Ron Howard', 135, '2021-12-20', 7, 'After John Nash, a brilliant but asocial mathematician, accepts secret work in cryptography, his life takes a turn for the nightmarish.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(160, 'Hera Pheri', 12, 'Priyadarshan', 156, '2022-03-11', 3, 'Three unemployed men look for answers to all their money problems - but when their opportunity arrives, will they know what to do with it?');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(161, 'Lock, Stock and Two Smoking Barrels', 12, 'Guy Ritchie', 107, '2022-04-15', 3, 'A botched card game in London triggers four friends, thugs, weed-growers, hard gangsters, loan sharks and debt collectors to collide with each other in a series of unexpected events, all for the sake of weed, cash and two antique shotguns.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(162, 'L.A. Confidential', 18, 'Curtis Hanson', 138, '2022-03-03', 6, 'As corruption grows in 1950s Los Angeles, three policemen - one strait-laced, one brutal, and one sleazy - investigate a series of murders with their own brand of justice.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(163, 'Eskiya', 18, 'Yavuz Turgul', 128, '2022-10-18', 6, 'Baran the Bandit, released from prison after 35 years, searches for vengeance and his lover.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(164, 'Heat', 18, 'Michael Mann', 170, '2022-01-17', 6, 'A group of professional bank robbers start to feel the heat from police when they unknowingly leave a clue at their latest heist.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(165, 'Casino', 18, 'Martin Scorsese', 178, '2022-02-05', 6, 'A tale of greed, deception, money, power, and murder occur between two best friends: a mafia enforcer and a casino executive compete against each other over a gambling empire, and over a fast-living and fast-loving socialite.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(166, 'Andaz Apna Apna', 12, 'Rajkumar Santoshi', 160, '2022-10-11', 3, 'Two slackers competing for the affections of an heiress inadvertently become her protectors from an evil criminal.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(167, 'Unforgiven', 12, 'Clint Eastwood', 130, '2022-05-23', 8, 'Retired Old West gunslinger William Munny reluctantly takes on one last job, with the help of his old partner Ned Logan and a young man, The "Schofield Kid."');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(168, 'Indiana Jones and the Last Crusade', 12, 'Steven Spielberg', 127, '2022-07-06', 3, 'In 1938, after his father Professor Henry Jones, Sr. goes missing while pursuing the Holy Grail, Professor Henry "Indiana" Jones, Jr. finds himself up against Adolf Hitler''s Nazis again to stop them from obtaining its powers.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(169, 'Dom za vesanje', 12, 'Emir Kusturica', 142, '2022-08-16', 0, 'In this luminous tale set in the area around Sarajevo and in Italy, Perhan, an engaging young Romany (gypsy) with telekinetic powers, is seduced by the quick-cash world of petty crime, which threatens to destroy him and those he loves.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(170, 'Tonari no Totoro', 8, 'Hayao Miyazaki', 86, '2022-10-21', 10, 'When two girls move to the country to be near their ailing mother, they have adventures with the wondrous forest spirits who live nearby.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(171, 'Die Hard', 12, 'John McTiernan', 132, '2022-07-31', 3, 'An NYPD officer tries to save his wife and several others taken hostage by German terrorists during a Christmas party at the Nakatomi Plaza in Los Angeles.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(172, 'Ran', 12, 'Akira Kurosawa', 162, '2022-11-24', 3, 'In Medieval Japan, an elderly warlord retires, handing over his empire to his three sons. However, he vastly underestimates how the new-found power will corrupt them and cause them to turn on each other...and him.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(173, 'Raging Bull', 8, 'Martin Scorsese', 129, '2022-04-13', 7, 'The life of boxer Jake LaMotta, whose violence and temper that led him to the top in the ring destroyed his life outside of it.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(174, 'Stalker', 12, 'Andrei Tarkovsky', 162, '2022-05-09', 8, 'A guide leads two men through an area known as the Zone to find a room that grants wishes.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(175, 'Hastsonaten', 12, 'Ingmar Bergman', 99, '2022-02-23', 8, 'A married daughter who longs for her mother''s love is visited by the latter, a successful concert pianist.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(176, 'The Message', 8, 'Moustapha Akkad', 177, '2022-05-19', 7, 'This epic historical drama chronicles the life and times of Prophet Muhammad and serves as an introduction to early Islamic history.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(177, 'Sholay', 12, 'Ramesh Sippy', 204, '2022-07-01', 3, 'After his family is murdered by a notorious and ruthless bandit, a former police officer enlists the services of two outlaws to capture the bandit.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(178, 'Monty Python and the Holy Grail', 12, 'Terry Gilliam', 91, '2022-01-07', 9, 'King Arthur and his Knights of the Round Table embark on a surreal, low-budget search for the Holy Grail, encountering many, very silly obstacles.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(179, 'The Great Escape', 12, 'John Sturges', 172, '2022-04-15', 9, 'Allied prisoners of war plan for several hundred of their number to escape from a German camp during World War II.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(180, 'To Kill a Mockingbird', 18, 'Robert Mulligan', 129, '2021-12-26', 6, 'Atticus Finch, a lawyer in the Depression-era South, defends a black man against an undeserved rape charge, and his children against prejudice.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(181, 'Yajinba', 12, 'Akira Kurosawa', 110, '2022-05-02', 3, 'A crafty ronin comes to a town divided by two criminal gangs and decides to play them against each other to free the town.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(182, 'Judgment at Nuremberg', 12, 'Stanley Kramer', 179, '2022-09-16', 8, 'In 1948, an American court in occupied Germany tries four Nazis judged for war crimes.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(183, 'Some Like It Hot', 12, 'Billy Wilder', 121, '2022-06-30', 0, 'After two male musicians witness a mob hit, they flee the state in an all-female band disguised as women, but further complications set in.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(184, 'Smultronstallet', 12, 'Ingmar Bergman', 91, '2022-11-11', 8, 'After living a life marked by coldness, an aging professor is forced to confront the emptiness of his existence.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(185, 'Det sjunde inseglet', 12, 'Ingmar Bergman', 96, '2021-12-17', 8, 'A man seeks answers about life, death, and the existence of God as he plays chess against the Grim Reaper during the Black Plague.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(186, 'Du rififi chez les hommes', 18, 'Jules Dassin', 118, '2022-07-31', 6, 'Four men plan a technically perfect crime, but the human element intervenes...');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(187, 'Dial M for Murder', 18, 'Alfred Hitchcock', 105, '2022-03-12', 6, 'A former tennis player tries to arrange his wife''s murder after learning of her affair.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(188, 'Takya monogatari', 12, 'Yasujira Ozu', 136, '2021-12-12', 8, 'An old couple visit their children and grandchildren in the city, but receive little attention.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(189, 'Rashamon', 18, 'Akira Kurosawa', 88, '2022-06-24', 6, 'The rape of a bride and the murder of her samurai husband are recalled from the perspectives of a bandit, the bride, the samurai''s ghost and a woodcutter.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(190, 'All About Eve', 12, 'Joseph L. Mankiewicz', 138, '2022-04-17', 8, 'A seemingly timid but secretly ruthless inganue insinuates herself into the lives of an aging Broadway star and her circle of theater friends.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(191, 'The Treasure of the Sierra Madre', 12, 'John Huston', 126, '2022-01-19', 9, 'Two Americans searching for work in Mexico convince an old prospector to help them mine for gold in the Sierra Madre Mountains.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(192, 'To Be or Not to Be', 12, 'Ernst Lubitsch', 99, '2022-03-10', 0, 'During the Nazi occupation of Poland, an acting troupe becomes embroiled in a Polish soldier''s efforts to track down a German spy.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(193, 'The Gold Rush', 12, 'Charles Chaplin', 95, '2022-11-09', 9, 'A prospector goes to the Klondike in search of gold and finds it and more.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(194, 'Sherlock Jr.', 12, 'Buster Keaton', 45, '2022-04-25', 3, 'A film projectionist longs to be a detective, and puts his meagre skills to work when he is framed by a rival for stealing his girlfriend''s father''s pocketwatch.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(195, 'Portrait de la jeune fille en feu', 12, 'Caline Sciamma', 122, '2021-12-16', 8, 'On an isolated island in Brittany at the end of the eighteenth century, a female painter is obliged to paint a wedding portrait of a young woman.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(196, 'Pink', 12, 'Aniruddha Roy Chowdhury', 136, '2022-05-20', 8, 'When three young women are implicated in a crime, a retired lawyer steps forward to help them clear their names.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(197, 'Koe no katachi', 8, 'Naoko Yamada', 130, '2022-03-31', 10, 'A young man is ostracized by his classmates after he bullies a deaf girl to the point where she moves away. Years later, he sets off on a path for redemption.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(198, 'Contratiempo', 18, 'Oriol Paulo', 106, '2022-02-19', 6, 'A successful entrepreneur accused of murder and a witness preparation expert have less than three hours to come up with an impregnable defense.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(199, 'Ah-ga-ssi', 12, 'Chan-wook Park', 145, '2022-07-01', 8, 'A woman is hired as a handmaiden to a Japanese heiress, but secretly she is involved in a plot to defraud her.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(200, 'Mommy', 12, 'Xavier Dolan', 139, '2022-09-18', 8, 'A widowed single mother, raising her violent son alone, finds new hope when a mysterious neighbor inserts herself into their household.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(201, 'Haider', 12, 'Vishal Bhardwaj', 160, '2022-05-01', 3, 'A young man returns to Kashmir after his father''s disappearance to confront his uncle, whom he suspects of playing a role in his father''s fate.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(202, 'Logan', 12, 'James Mangold', 137, '2022-09-12', 3, 'In a future where mutants are nearly extinct, an elderly and weary Logan leads a quiet life. But when Laura, a mutant child pursued by scientists, comes to him for help, he must get her to safety.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(203, 'Room', 12, 'Lenny Abrahamson', 118, '2022-08-14', 8, 'Held captive for 7 years in an enclosed space, a woman and her young son finally gain their freedom, allowing the boy to experience the outside world for the first time.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(204, 'Relatos salvajes', 12, 'Damian Szifron', 122, '2022-04-14', 0, 'Six short stories that explore the extremities of human behavior involving people in distress.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(205, 'Soul', 8, 'Pete Docter', 100, '2022-11-28', 10, 'After landing the gig of a lifetime, a New York jazz pianist suddenly finds himself trapped in a strange land between Earth and the afterlife.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(206, 'Kis Uykusu', 12, 'Nuri Bilge Ceylan', 196, '2022-11-21', 8, 'A hotel owner and landlord in a remote Turkish village deals with conflicts within his family and a tenant behind on his rent.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(207, 'PK', 12, 'Rajkumar Hirani', 153, '2022-06-29', 0, 'An alien on Earth loses the only device he can use to communicate with his spaceship. His innocent nature and child-like questions force the country to evaluate the impact of religion on its people.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(208, 'OMG: Oh My God!', 12, 'Umesh Shukla', 125, '2022-04-14', 0, 'A shopkeeper takes God to court when his shop is destroyed by an earthquake.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(209, 'The Grand Budapest Hotel', 12, 'Wes Anderson', 99, '2022-01-15', 9, 'A writer encounters the owner of an aging high-class hotel, who tells him of his early years serving as a lobby boy in the hotel''s glorious years under an exceptional concierge.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(210, 'Gone Girl', 12, 'David Fincher', 149, '2022-08-12', 8, 'With his wife''s disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it''s suspected that he may not be innocent.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(211, 'akami kodomo no Ame to Yuki', 8, 'Mamoru Hosoda', 117, '2022-07-28', 10, 'After her werewolf lover unexpectedly dies in an accident while hunting for food for their children, a young woman must find ways to raise the werewolf son and daughter that she had with him while keeping their trait hidden from society.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(212, 'Hacksaw Ridge', 8, 'Mel Gibson', 139, '2022-03-18', 7, 'World War II American Army Medic Desmond T. Doss, who served during the Battle of Okinawa, refuses to kill people, and becomes the first man in American history to receive the Medal of Honor without firing a shot.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(213, 'Inside Out', 8, 'Pete Docter', 95, '2022-10-29', 10, 'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(214, 'Barfi!', 12, 'Anurag Basu', 151, '2022-12-09', 0, 'Three young people learn that love can neither be defined nor contained by society''s definition of normal and abnormal.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(215, '12 Years a Slave', 8, 'Steve McQueen', 134, '2022-08-22', 7, 'In the antebellum United States, Solomon Northup, a free black man from upstate New York, is abducted and sold into slavery.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(216, 'Rush', 12, 'Ron Howard', 123, '2022-07-11', 3, 'The merciless 1970s rivalry between Formula One rivals James Hunt and Niki Lauda.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(217, 'Ford v Ferrari', 12, 'James Mangold', 152, '2022-08-22', 3, 'American car designer Carroll Shelby and driver Ken Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order to defeat Ferrari at the 24 Hours of Le Mans in 1966.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(218, 'Spotlight', 8, 'Tom McCarthy', 129, '2022-04-23', 7, 'The true story of how the Boston Globe uncovered the massive scandal of child molestation and cover-up within the local Catholic Archdiocese, shaking the entire Catholic Church to its core.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(219, 'Song of the Sea', 8, 'Tomm Moore', 93, '2022-01-27', 10, 'Ben, a young Irish boy, and his little sister Saoirse, a girl who can turn into a seal, go on an adventure to free the fairies and save the spirit world.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(220, 'Kahaani', 12, 'Sujoy Ghosh', 122, '2022-01-25', 5, 'A pregnant woman''s search for her missing husband takes her from London to Kolkata, but everyone she questions denies having ever met him.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(221, 'Zindagi Na Milegi Dobara', 12, 'Zoya Akhtar', 155, '2021-12-24', 0, 'Three friends decide to turn their fantasy vacation into reality after one of their friends gets engaged.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(222, 'Prisoners', 18, 'Denis Villeneuve', 153, '2022-10-06', 6, 'When Keller Dover''s daughter and her friend go missing, he takes matters into his own hands as the police pursue multiple leads and the pressure mounts.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(223, 'Mad Max: Fury Road', 12, 'George Miller', 120, '2022-03-17', 3, 'In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler in search for her homeland with the aid of a group of female prisoners, a psychotic worshiper, and a drifter named Max.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(224, 'A Wednesday', 12, 'Neeraj Pandey', 104, '2022-09-03', 3, 'A retiring police officer reminisces about the most astounding day of his career. About a case that was never filed but continues to haunt him in his memories - the case of a man and a Wednesday.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(225, 'Gran Torino', 12, 'Clint Eastwood', 116, '2022-01-23', 8, 'Disgruntled Korean War veteran Walt Kowalski sets out to reform his neighbor, Thao Lor, a Hmong teenager who tried to steal Kowalski''s prized possession: a 1972 Gran Torino.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(226, 'Harry Potter and the Deathly Hallows: Part 2', 12, 'David Yates', 130, '2022-06-23', 9, 'Harry, Ron, and Hermione search for Voldemort''s remaining Horcruxes in their effort to destroy the Dark Lord as the final battle rages on at Hogwarts.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(227, 'Okuribito', 12, 'Yajira Takita', 130, '2022-12-06', 8, 'A newly unemployed cellist takes a job preparing the dead for funerals.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(228, 'Hachi: A Dog''s Tale', 8, 'Lasse Hallstram', 93, '2022-05-18', 7, 'A college professor bonds with an abandoned dog he takes into his home.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(229, 'Mary and Max', 8, 'Adam Elliot', 92, '2022-05-29', 10, 'A tale of friendship between two unlikely pen pals: Mary, a lonely, eight-year-old girl living in the suburbs of Melbourne, and Max, a forty-four-year old, severely obese man living in New York.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(230, 'How to Train Your Dragon', 8, 'Dean DeBlois', 98, '2022-01-27', 10, 'A hapless young Viking who aspires to hunt dragons becomes the unlikely friend of a young dragon himself, and learns there may be more to the creatures than he assumed.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(231, 'Into the Wild', 12, 'Sean Penn', 148, '2022-11-23', 9, 'After graduating from Emory University, top student and athlete Christopher McCandless abandons his possessions, gives his entire $24,000 savings account to charity and hitchhikes to Alaska to live in the wilderness. Along the way, Christopher encoun');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(232, 'No Country for Old Men', 18, 'Ethan Coen', 122, '2022-04-28', 6, 'Violence and mayhem ensue after a hunter stumbles upon a drug deal gone wrong and more than two million dollars in cash near the Rio Grande.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(233, 'Lage Raho Munna Bhai', 12, 'Rajkumar Hirani', 144, '2022-06-16', 0, 'Munna Bhai embarks on a journey with Mahatma Gandhi in order to fight against a corrupt property dealer.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(234, 'Million Dollar Baby', 12, 'Clint Eastwood', 132, '2022-05-17', 8, 'A determined woman works with a hardened boxing trainer to become a professional.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(235, 'Hotel Rwanda', 8, 'Terry George', 121, '2022-03-11', 7, 'Paul Rusesabagina, a hotel manager, houses over a thousand Tutsi refugees during their struggle against the Hutu militia in Rwanda, Africa.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(236, 'Taegukgi hwinalrimyeo', 12, 'Je-kyu Kang', 140, '2022-02-22', 3, 'When two brothers are forced to fight in the Korean War, the elder decides to take the riskiest missions if it will help shield the younger from battle.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(237, 'Before Sunset', 12, 'Richard Linklater', 80, '2022-01-05', 8, 'Nine years after Jesse and Celine first met, they encounter each other again on the French leg of Jesse''s book tour.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(238, 'Munna Bhai M.B.B.S.', 12, 'Rajkumar Hirani', 156, '2022-03-18', 0, 'A gangster sets out to fulfill his father''s dream of becoming a doctor.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(239, 'Salinui chueok', 18, 'Bong Joon Ho', 131, '2022-11-26', 6, 'In a small Korean province in 1986, two detectives struggle with the case of multiple young women being found raped and murdered by an unknown culprit.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(240, 'Dil Chahta Hai', 12, 'Farhan Akhtar', 183, '2022-10-19', 0, 'Three inseparable childhood friends are just out of college. Nothing comes between them - until they each fall in love, and their wildly different approaches to relationships creates tension.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(241, 'Kill Bill: Vol. 1', 12, 'Quentin Tarantino', 111, '2022-09-27', 3, 'After awakening from a four-year coma, a former assassin wreaks vengeance on the team of assassins who betrayed her.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(242, 'Finding Nemo', 8, 'Andrew Stanton', 100, '2022-04-11', 10, 'After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(243, 'Catch Me If You Can', 8, 'Steven Spielberg', 141, '2022-11-05', 7, 'Barely 21 yet, Frank is a skilled forger who has passed as a doctor, lawyer and pilot. FBI agent Carl becomes obsessed with tracking down the con man, who only revels in the pursuit.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(244, 'Amores perros', 12, 'Alejandro G. Inarritu', 154, '2022-01-08', 8, 'A horrific car accident connects three stories, each involving characters dealing with loss, regret, and life''s harsh realities, all in the name of love.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(245, 'Monsters, Inc.', 8, 'Pete Docter', 92, '2022-01-26', 10, 'In order to power the city, monsters have to scare children so that they scream. However, the children are toxic to the monsters, and after a child gets through, 2 monsters realize things may not be what they think.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(246, 'Shin seiki Evangelion Gekija-ban: Air/Magokoro wo, kimi ni', 8, 'Hideaki Anno', 87, '2022-10-05', 10, 'Concurrent theatrical ending of the TV series Shin seiki evangerion (1995).');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(247, 'Lagaan: Once Upon a Time in India', 12, 'Ashutosh Gowariker', 224, '2021-12-30', 9, 'The people of a small village in Victorian India stake their future on a game of cricket against their ruthless British rulers.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(248, 'The Sixth Sense', 12, 'M. Night Shyamalan', 107, '2022-08-25', 8, 'A boy who communicates with spirits seeks the help of a disheartened child psychologist.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(249, 'La leggenda del pianista sull''oceano', 12, 'Giuseppe Tornatore', 169, '2022-06-02', 8, 'A baby boy, discovered in 1900 on an ocean liner, grows into a musical prodigy, never setting foot on land.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(250, 'The Truman Show', 12, 'Peter Weir', 103, '2022-08-26', 0, 'An insurance salesman discovers his whole life is actually a reality TV show.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(251, 'Crna macka, beli macor', 12, 'Emir Kusturica', 127, '2022-03-19', 0, 'Matko and his son Zare live on the banks of the Danube river and get by through hustling and basically doing anything to make a living. In order to pay off a business debt Matko agrees to marry off Zare to the sister of a local gangster.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(252, 'The Big Lebowski', 12, 'Joel Coen', 117, '2022-08-07', 0, 'Jeff "The Dude" Lebowski, mistaken for a millionaire of the same name, seeks restitution for his ruined rug and enlists his bowling buddies to help get it.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(253, 'Fa yeung nin wah', 12, 'Kar-Wai Wong', 98, '2021-12-30', 8, 'Two neighbors, a woman and a man, form a strong bond after both suspect extramarital activities of their spouses. However, they agree to keep their bond platonic so as not to commit similar wrongs.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(254, 'Trainspotting', 12, 'Danny Boyle', 93, '2022-05-17', 8, 'Renton, deeply immersed in the Edinburgh drug scene, tries to clean up and get out, despite the allure of the drugs and influence of friends.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(255, 'Fargo', 18, 'Joel Coen', 98, '2022-06-16', 6, 'Jerry Lundegaard''s inept crime falls apart due to his and his henchmen''s bungling and the persistent police work of the quite pregnant Marge Gunderson.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(256, 'Underground', 12, 'Emir Kusturica', 170, '2022-07-08', 0, 'A group of Serbian socialists prepares for the war in a surreal underground filled by parties, tragedies, love and hate.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(257, 'La haine', 18, 'Mathieu Kassovitz', 98, '2022-11-10', 6, '24 hours in the lives of three young men in the French suburbs the day after a violent riot.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(258, 'Dilwale Dulhania Le Jayenge', 12, 'Aditya Chopra', 189, '2022-10-25', 8, 'When Raj meets Simran in Europe, it isn''t love at first sight but when Simran moves to India for an arranged marriage, love makes its presence felt.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(259, 'Before Sunrise', 12, 'Richard Linklater', 101, '2022-05-06', 8, 'A young man and woman meet on a train in Europe, and wind up spending one evening together in Vienna. Unfortunately, both know that this will probably be their only night together.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(260, 'Trois couleurs: Rouge', 12, 'Krzysztof Kieslowski', 99, '2022-02-28', 8, 'A model discovers a retired judge is keen on invading people''s privacy.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(261, 'Chung Hing sam lam', 12, 'Kar-Wai Wong', 102, '2022-02-05', 0, 'Two melancholy Hong Kong policemen fall in love: one with a mysterious female underworld figure, the other with a beautiful and ethereal server at a late-night restaurant he frequents.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(262, 'Jurassic Park', 12, 'Steven Spielberg', 127, '2022-06-27', 3, 'A pragmatic paleontologist visiting an almost complete theme park is tasked with protecting a couple of kids after a power failure causes the park''s cloned dinosaurs to run loose.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(263, 'In the Name of the Father', 8, 'Jim Sheridan', 133, '2022-09-20', 7, 'A man''s coerced confession to an I.R.A. bombing he did not commit results in the imprisonment of his father as well. An English lawyer fights to free them.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(264, 'Ba wang bie ji', 12, 'Kaige Chen', 171, '2022-10-13', 8, 'Two boys meet at an opera training school in Peking in 1924. Their resulting friendship will span nearly 70 years and will endure some of the most troublesome times in China''s history.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(265, 'Da hong denglong gaogao gua', 12, 'Yimou Zhang', 125, '2022-09-20', 8, 'A young woman becomes the fourth wife of a wealthy lord, and must learn to live with the strict rules and tensions within the household.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(266, 'Dead Poets Society', 12, 'Peter Weir', 128, '2022-02-17', 0, 'Maverick teacher John Keating uses poetry to embolden his boarding school students to new heights of self-expression.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(267, 'Stand by Me', 12, 'Rob Reiner', 89, '2022-09-16', 9, 'After the death of one of his friends, a writer recounts a childhood journey with his friends to find the body of a missing boy.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(268, 'Platoon', 12, 'Oliver Stone', 120, '2022-01-03', 8, 'Chris Taylor, a neophyte recruit in Vietnam, finds himself caught in a battle of wills between two sergeants, one good and the other evil. A shrewd examination of the brutality of war and the duality of man in conflict.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(269, 'Paris, Texas', 12, 'Wim Wenders', 145, '2022-03-15', 8, 'Travis Henderson, an aimless drifter who has been missing for four years, wanders out of the desert and must reconnect with society, himself, his life, and his family.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(270, 'Kaze no tani no Naushika', 8, 'Hayao Miyazaki', 117, '2022-03-12', 10, 'Warrior and pacifist Princess Nausicaa desperately struggles to prevent two warring nations from destroying themselves and their dying planet.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(271, 'The Thing', 18, 'John Carpenter', 109, '2022-03-21', 2, 'A research team in Antarctica is hunted by a shape-shifting alien that assumes the appearance of its victims.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(272, 'Pink Floyd: The Wall', 12, 'Alan Parker', 95, '2022-09-16', 8, 'A confined but troubled rock star descends into madness in the midst of his physical and social isolation from everyone.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(273, 'Fitzcarraldo', 12, 'Werner Herzog', 158, '2022-06-10', 9, 'The story of Brian Sweeney Fitzgerald, an extremely determined man who intends to build an opera house in the middle of a jungle.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(274, 'Fanny och Alexander', 12, 'Ingmar Bergman', 188, '2021-12-27', 8, 'Two young Swedish children experience the many comedies and tragedies of their family, the Ekdahls.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(275, 'Blade Runner', 12, 'Ridley Scott', 117, '2022-08-28', 3, 'A blade runner must pursue and terminate four replicants who stole a ship in space, and have returned to Earth to find their creator.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(276, 'The Elephant Man', 8, 'David Lynch', 124, '2022-07-05', 7, 'A Victorian surgeon rescues a heavily disfigured man who is mistreated while scraping a living as a side-show freak. Behind his monstrous faaade, there is revealed a person of kindness, intelligence and sophistication.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(277, 'Life of Brian', 12, 'Terry Jones', 94, '2022-08-20', 0, 'Born on the original Christmas in the stable next door to Jesus Christ, Brian of Nazareth spends his life being mistaken for a messiah.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(278, 'The Deer Hunter', 12, 'Michael Cimino', 183, '2022-08-02', 8, 'An in-depth examination of the ways in which the U.S. Vietnam War impacts and disrupts the lives of people in a small industrial town in Pennsylvania.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(279, 'Rocky', 12, 'John G. Avildsen', 120, '2022-04-29', 8, 'A small-time boxer gets a supremely rare chance to fight a heavy-weight champion in a bout in which he strives to go the distance for his self-respect.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(280, 'Network', 12, 'Sidney Lumet', 121, '2022-07-18', 8, 'A television network cynically exploits a deranged former anchor''s ravings and revelations about the news media for its own profit.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(281, 'Barry Lyndon', 12, 'Stanley Kubrick', 185, '2022-01-01', 9, 'An Irish rogue wins the heart of a rich widow and assumes her dead husband''s aristocratic position in 18th-century England.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(282, 'Zerkalo', 8, 'Andrei Tarkovsky', 107, '2022-10-16', 7, 'A dying man in his forties remembers his past. His childhood, his mother, the war, personal moments and things that tell of the recent history of all the Russian nation.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(283, 'Chinatown', 12, 'Roman Polanski', 130, '2022-06-09', 8, 'A private detective hired to expose an adulterer finds himself caught up in a web of deceit, corruption, and murder.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(284, 'Paper Moon', 12, 'Peter Bogdanovich', 102, '2022-04-13', 0, 'During the Great Depression, a con man finds himself saddled with a young girl who may or may not be his daughter, and the two forge an unlikely partnership.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(285, 'Viskningar och rop', 12, 'Ingmar Bergman', 91, '2022-09-16', 8, 'When a woman dying of cancer in early twentieth-century Sweden is visited by her two sisters, long-repressed feelings between the siblings rise to the surface.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(286, 'Solaris', 12, 'Andrei Tarkovsky', 167, '2022-03-01', 8, 'A psychologist is sent to a station orbiting a distant planet in order to discover what has caused the crew to go insane.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(287, 'Le samourai', 18, 'Jean-Pierre Melville', 105, '2022-10-14', 6, 'After professional hitman Jef Costello is seen by witnesses his efforts to provide himself an alibi drive him further into a corner.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(288, 'Cool Hand Luke', 18, 'Stuart Rosenberg', 127, '2022-03-07', 6, 'A laid back Southern man is sentenced to two years in a rural prison, but refuses to conform.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(289, 'Persona', 12, 'Ingmar Bergman', 85, '2022-10-07', 8, 'A nurse is put in charge of a mute actress and finds that their personae are melding together.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(290, 'Andrei Rublev', 8, 'Andrei Tarkovsky', 205, '2022-10-18', 7, 'The life, times and afflictions of the fifteenth-century Russian iconographer St. Andrei Rublev.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(291, 'La battaglia di Algeri', 12, 'Gillo Pontecorvo', 121, '2022-06-02', 8, 'In the 1950s, fear and violence escalate as the people of Algiers fight for independence from the French government.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(292, 'El angel exterminador', 12, 'Luis Bunuel', 95, '2022-05-01', 8, 'The guests at an upper-class dinner party find themselves unable to leave.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(293, 'What Ever Happened to Baby Jane?', 12, 'Robert Aldrich', 134, '2022-10-26', 8, 'A former child star torments her paraplegic sister in their decaying Hollywood mansion.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(294, 'Sanjuro', 12, 'Akira Kurosawa', 96, '2022-07-25', 3, 'A crafty samurai helps a young man and his fellow clansmen save his uncle, who has been framed and imprisoned by a corrupt superintendent.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(295, 'The Man Who Shot Liberty Valance', 12, 'John Ford', 123, '2022-08-03', 8, 'A senator returns to a western town for the funeral of an old friend and tells the story of his origins.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(296, 'Ivanovo detstvo', 12, 'Andrei Tarkovsky', 95, '2022-02-12', 8, 'In WW2, twelve year old Soviet orphan Ivan Bondarev works for the Soviet army as a scout behind the German lines and strikes a friendship with three sympathetic Soviet officers.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(297, 'Jungfrukallan', 12, 'Ingmar Bergman', 89, '2022-01-31', 8, 'An innocent yet pampered young virgin and her family''s pregnant and jealous servant set out to deliver candles to church, but only one returns from events that transpire in the woods along the way.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(298, 'Inherit the Wind', 8, 'Stanley Kramer', 128, '2022-01-28', 7, 'Based on a real-life case in 1925, two great lawyers argue the case for and against a science teacher accused of the crime of teaching evolution.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(299, 'Les quatre cents coups', 18, 'Franaois Truffaut', 99, '2022-03-17', 6, 'A young boy, left without attention, delves into a life of petty crime.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(300, 'Ben-Hur', 12, 'William Wyler', 212, '2022-06-15', 9, 'After a Jewish prince is betrayed and sent into slavery by a Roman friend, he regains his freedom and comes back for revenge.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(301, 'Kakushi-toride no san-akunin', 12, 'Akira Kurosawa', 139, '2022-01-10', 9, 'Lured by gold, two greedy peasants unknowingly escort a princess and her general across enemy lines.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(302, 'Le notti di Cabiria', 12, 'Federico Fellini', 110, '2022-09-25', 8, 'A waifish prostitute wanders the streets of Rome looking for true love but finds only heartbreak.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(303, 'Kumonosu-ja', 12, 'Akira Kurosawa', 110, '2022-11-24', 8, 'A war-hardened general, egged on by his ambitious wife, works to fulfill a prophecy that he would become lord of Spider''s Web Castle.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(304, 'The Bridge on the River Kwai', 12, 'David Lean', 161, '2022-02-22', 9, 'British POWs are forced to build a railway bridge across the river Kwai for their Japanese captors, not knowing that the allied forces are planning to destroy it.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(305, 'On the Waterfront', 18, 'Elia Kazan', 108, '2021-12-11', 6, 'An ex-prize fighter turned longshoreman struggles to stand up to his corrupt union bosses.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(306, 'Le salaire de la peur', 12, 'Henri-Georges Clouzot', 131, '2022-08-26', 9, 'In a decrepit South American village, four men are hired to transport an urgent nitroglycerine shipment without the equipment that would make it safe.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(307, 'Ace in the Hole', 12, 'Billy Wilder', 111, '2022-02-11', 8, 'A frustrated former big-city journalist now stuck working for an Albuquerque newspaper exploits a story about a man trapped in a cave to rekindle his career, but the situation quickly escalates into an out-of-control circus.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(308, 'White Heat', 12, 'Raoul Walsh', 114, '2022-02-14', 3, 'A psychopathic criminal with a mother complex makes a daring break from prison and leads his old gang in a chemical plant payroll heist.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(309, 'The Third Man', 12, 'Carol Reed', 104, '2022-11-28', 4, 'Pulp novelist Holly Martins travels to shadowy, postwar Vienna, only to find himself investigating the mysterious death of an old friend, Harry Lime.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(310, 'The Red Shoes', 12, 'Michael Powell', 135, '2022-08-21', 8, 'A young ballet dancer is torn between the man she loves and her pursuit to become a prima ballerina.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(311, 'The Shop Around the Corner', 12, 'Ernst Lubitsch', 99, '2021-12-15', 0, 'Two employees at a gift shop can barely stand each other, without realizing that they are falling in love through the post as each other''s anonymous pen pal.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(312, 'Rebecca', 12, 'Alfred Hitchcock', 130, '2022-06-18', 8, 'A self-conscious woman juggles adjusting to her new role as an aristocrat''s wife and avoiding being intimidated by his first wife''s spectral presence.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(313, 'Mr. Smith Goes to Washington', 12, 'Frank Capra', 129, '2022-06-24', 0, 'A naive man is appointed to fill a vacancy in the United States Senate. His plans promptly collide with political corruption, but he doesn''t back down.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(314, 'Gone with the Wind', 12, 'Victor Fleming', 238, '2022-06-09', 8, 'A manipulative woman and a roguish man conduct a turbulent romance during the American Civil War and Reconstruction periods.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(315, 'La Grande Illusion', 12, 'Jean Renoir', 113, '2022-11-16', 8, 'During WWI, two French soldiers are captured and imprisoned in a German P.O.W. camp. Several escape attempts follow until they are eventually sent to a seemingly inescapable fortress.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(316, 'It Happened One Night', 12, 'Frank Capra', 105, '2022-03-07', 0, 'A renegade reporter and a crazy young heiress meet on a bus heading for New York, and end up stuck with each other when the bus leaves them behind at one of the stops.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(317, 'La passion de Jeanne d''Arc', 8, 'Carl Theodor Dreyer', 110, '2022-05-23', 7, 'In 1431, Jeanne d''Arc is placed on trial on charges of heresy. The ecclesiastical jurists attempt to force Jeanne to recant her claims of holy visions.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(318, 'The Circus', 12, 'Charles Chaplin', 72, '2022-11-15', 0, 'The Tramp finds work and the girl of his dreams at a circus.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(319, 'Sunrise: A Song of Two Humans', 12, 'F.W. Murnau', 94, '2022-12-01', 8, 'An allegorical tale about a man fighting the good and evil within him. Both sides are made flesh - one a sophisticated woman he is attracted to and the other his wife.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(320, 'The General', 12, 'Clyde Bruckman', 67, '2022-04-28', 3, 'When Union spies steal an engineer''s beloved locomotive, he pursues it single-handedly and straight through enemy lines.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(321, 'Das Cabinet des Dr. Caligari', 8, 'Robert Wiene', 76, '2022-07-02', 1, 'Hypnotist Dr. Caligari uses a somnambulist, Cesare, to commit murders.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(322, 'Badhaai ho', 12, 'Amit Ravindernath Sharma', 124, '2022-10-24', 0, 'A man is embarrassed when he finds out his mother is pregnant.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(323, 'Togo', 12, 'Ericson Core', 113, '2022-02-12', 9, 'The story of Togo, the sled dog who led the 1925 serum run yet was considered by most to be too small and weak to lead such an intense race.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(324, 'Airlift', 12, 'Raja Menon', 130, '2022-10-10', 8, 'When Iraq invades Kuwait in August 1990, a callous Indian businessman becomes the spokesperson for more than 170,000 stranded countrymen.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(325, 'Bajrangi Bhaijaan', 12, 'Kabir Khan', 163, '2022-04-28', 3, 'An Indian man with a magnanimous heart takes a young mute Pakistani girl back to her homeland to reunite her with her family.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(326, 'Baby', 12, 'Neeraj Pandey', 159, '2022-08-07', 3, 'An elite counter-intelligence unit learns of a plot, masterminded by a maniacal madman. With the clock ticking, it''s up to them to track the terrorists'' international tentacles and prevent them from striking at the heart of India.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(327, 'La La Land', 12, 'Damien Chazelle', 128, '2022-07-07', 0, 'While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(328, 'Lion', 8, 'Garth Davis', 118, '2022-06-18', 7, 'A five-year-old Indian boy is adopted by an Australian couple after getting lost hundreds of kilometers from home. 25 years later, he sets out to find his lost family.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(329, 'The Martian', 12, 'Ridley Scott', 144, '2022-10-27', 9, 'An astronaut becomes stranded on Mars after his team assume him dead, and must rely on his ingenuity to find a way to signal to Earth that he is alive.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(330, 'Zootopia', 8, 'Byron Howard', 108, '2022-01-22', 10, 'In a city of anthropomorphic animals, a rookie bunny cop and a cynical con artist fox must work together to uncover a conspiracy.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(331, 'Bahubali: The Beginning', 12, 'S.S. Rajamouli', 159, '2022-03-27', 3, 'In ancient India, an adventurous and daring man becomes involved in a decades-old feud between two warring peoples.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(332, 'Kaguyahime no monogatari', 8, 'Isao Takahata', 137, '2022-08-08', 10, 'Found inside a shining stalk of bamboo by an old bamboo cutter and his wife, a tiny girl grows rapidly into an exquisite young lady. The mysterious young princess enthralls all who encounter her, but ultimately she must confront her fate, the punishm');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(333, 'Wonder', 12, 'Stephen Chbosky', 113, '2022-05-31', 8, 'Based on the New York Times bestseller, this movie tells the incredibly inspiring and heartwarming story of August Pullman, a boy with facial differences who enters the fifth grade, attending a mainstream elementary school for the first time.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(334, 'Gully Boy', 12, 'Zoya Akhtar', 154, '2022-08-13', 8, 'A coming-of-age story based on the lives of street rappers in Mumbai.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(335, 'Special Chabbis', 18, 'Neeraj Pandey', 144, '2022-09-18', 6, 'A gang of con-men rob prominent rich businessmen and politicians by posing as C.B.I and income tax officers.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(336, 'Short Term 12', 12, 'Destin Daniel Cretton', 96, '2022-06-03', 8, 'A 20-something supervising staff member of a residential treatment facility navigates the troubled waters of that world alongside her co-worker and longtime boyfriend.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(337, 'Serbuan maut 2: Berandal', 12, 'Gareth Evans', 150, '2022-05-17', 3, 'Only a short time after the first raid, Rama goes undercover with the thugs of Jakarta and plans to bring down the syndicate and uncover the corruption within his police force.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(338, 'The Imitation Game', 8, 'Morten Tyldum', 114, '2022-06-21', 7, 'During World War II, the English mathematical genius Alan Turing tries to crack the German Enigma code with help from fellow mathematicians.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(339, 'Guardians of the Galaxy', 12, 'James Gunn', 121, '2022-09-20', 3, 'A group of intergalactic criminals must pull together to stop a fanatical warrior with plans to purge the universe.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(340, 'Blade Runner 2049', 12, 'Denis Villeneuve', 164, '2022-04-14', 3, 'Young Blade Runner K''s discovery of a long-buried secret leads him to track down former Blade Runner Rick Deckard, who''s been missing for thirty years.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(341, 'Her', 12, 'Spike Jonze', 126, '2021-12-28', 8, 'In a near future, a lonely writer develops an unlikely relationship with an operating system designed to meet his every need.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(342, 'Bohemian Rhapsody', 8, 'Bryan Singer', 134, '2022-10-16', 7, 'The story of the legendary British rock band Queen and lead singer Freddie Mercury, leading up to their famous performance at Live Aid (1985).');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(343, 'The Revenant', 12, 'Alejandro G. Inarritu', 156, '2022-03-24', 3, 'A frontiersman on a fur trading expedition in the 1820s fights for survival after being mauled by a bear and left for dead by members of his own hunting team.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(344, 'The Perks of Being a Wallflower', 12, 'Stephen Chbosky', 103, '2022-01-07', 8, 'An introvert freshman is taken under the wings of two seniors who welcome him to the real world');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(345, 'Tropa de Elite 2: O Inimigo Agora e Outro', 12, 'Jose Padilha', 115, '2022-04-20', 3, 'After a prison riot, former-Captain Nascimento, now a high ranking security officer in Rio de Janeiro, is swept into a bloody political dispute that involves government officials and paramilitary groups.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(346, 'The King''s Speech', 8, 'Tom Hooper', 118, '2022-06-27', 7, 'The story of King George VI, his impromptu ascension to the throne of the British Empire in 1936, and the speech therapist who helped the unsure monarch overcome his stammer.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(347, 'The Help', 12, 'Tate Taylor', 146, '2022-07-16', 8, 'An aspiring author during the civil rights movement of the 1960s decides to write a book detailing the African American maids'' point of view on the white families for which they work, and the hardships they go through on a daily basis.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(348, 'Deadpool', 12, 'Tim Miller', 108, '2022-05-19', 3, 'A wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looks.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(349, 'Darbareye Elly', 12, 'Asghar Farhadi', 119, '2022-03-11', 8, 'The mysterious disappearance of a kindergarten teacher during a picnic in the north of Iran is followed by a series of misadventures for her fellow travelers.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(350, 'Dev.D', 12, 'Anurag Kashyap', 144, '2022-01-17', 8, 'After breaking up with his childhood sweetheart, a young man finds solace in drugs. Meanwhile, a teenage girl is caught in the world of prostitution. Will they be destroyed, or will they find redemption?');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(351, 'Yip Man', 12, 'Wilson Yip', 106, '2022-10-17', 3, 'During the Japanese invasion of China, a wealthy martial artist is forced to leave his home when his city is occupied. With little means of providing for themselves, Ip Man and the remaining members of the city must find a way to survive.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(352, 'My Name Is Khan', 12, 'Karan Johar', 165, '2022-06-30', 8, 'An Indian Muslim man with Asperger''s syndrome takes a challenge to speak to the President of the United States seriously and embarks on a cross-country journey.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(353, 'Nefes: Vatan Sagolsun', 12, 'Levent Semerci', 128, '2022-09-08', 3, 'Story of 40-man Turkish task force who must defend a relay station.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(354, 'Slumdog Millionaire', 12, 'Danny Boyle', 120, '2022-01-05', 8, 'A Mumbai teenager reflects on his life after being accused of cheating on the Indian version of "Who Wants to be a Millionaire?".');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(355, 'Black Swan', 12, 'Darren Aronofsky', 108, '2022-01-11', 8, 'A committed dancer struggles to maintain her sanity after winning the lead role in a production of Tchaikovsky''s "Swan Lake".');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(356, 'Tropa de Elite', 12, 'Josa Padilha', 115, '2022-02-10', 3, 'In 1997 Rio de Janeiro, Captain Nascimento has to find a substitute for his position while trying to take down drug dealers and criminals before the Pope visits.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(357, 'The Avengers', 12, 'Joss Whedon', 143, '2022-07-13', 3, 'Earth''s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(358, 'Persepolis', 8, 'Vincent Paronnaud', 96, '2022-11-24', 10, 'A precocious and outspoken Iranian girl grows up during the Islamic Revolution.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(359, 'Dallas Buyers Club', 8, 'Jean-Marc Vallae', 117, '2022-04-08', 7, 'In 1985 Dallas, electrician and hustler Ron Woodroof works around the system to help AIDS patients get the medication they need after he is diagnosed with the disease.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(360, 'The Pursuit of Happyness', 8, 'Gabriele Muccino', 117, '2022-04-08', 7, 'A struggling salesman takes custody of his son as he''s poised to begin a life-changing professional career.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(361, 'Blood Diamond', 12, 'Edward Zwick', 143, '2022-04-14', 9, 'A fisherman, a smuggler, and a syndicate of businessmen match wits over the possession of a priceless diamond.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(362, 'The Bourne Ultimatum', 12, 'Paul Greengrass', 115, '2022-04-14', 3, 'Jason Bourne dodges a ruthless C.I.A. official and his Agents from a new assassination program while searching for the origins of his life as a trained killer.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(363, 'Bin-jip', 18, 'Ki-duk Kim', 88, '2022-09-05', 6, 'A transient young man breaks into empty homes to partake of the vacationing residents'' lives for a few days.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(364, 'Sin City', 18, 'Frank Miller', 124, '2022-07-11', 6, 'A movie that explores the dark and miserable town, Basin City, tells the story of three different people, all caught up in violent corruption.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(365, 'Le scaphandre et le papillon', 8, 'Julian Schnabel', 112, '2022-05-25', 7, 'The true story of Elle editor Jean-Dominique Bauby who suffers a stroke and has to live with an almost totally paralyzed body; only his left eye isn''t paralyzed.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(366, 'G.O.R.A.', 12, 'amer Faruk Sorak', 127, '2022-01-24', 9, 'A slick young Turk kidnapped by extraterrestrials shows his great a humanitarian spirit a by outwitting the evil commander-in-chief of the planet of G.O.R.A.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(367, 'Ratatouille', 8, 'Brad Bird', 111, '2022-05-12', 10, 'A rat who can cook makes an unusual alliance with a young kitchen worker at a famous restaurant.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(368, 'Casino Royale', 12, 'Martin Campbell', 144, '2022-08-13', 3, 'After earning 00 status and a licence to kill, Secret Agent James Bond sets out on his first mission as 007. Bond must defeat a private banker funding terrorists in a high-stakes game of poker at Casino Royale, Montenegro.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(369, 'Kill Bill: Vol. 2', 12, 'Quentin Tarantino', 137, '2022-11-23', 3, 'The Bride continues her quest of vengeance against her former boss and lover Bill, the reclusive bouncer Budd, and the treacherous, one-eyed Elle.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(370, 'Vozvrashchenie', 12, 'Andrey Zvyagintsev', 110, '2022-08-29', 8, 'In the Russian wilderness, two brothers face a range of new, conflicting emotions when their father - a man they know only through a single photograph - resurfaces.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(371, 'Bom Yeoareum Gaeul Gyeoul Geurigo Bom', 12, 'Ki-duk Kim', 103, '2022-08-20', 8, 'A boy is raised by a Buddhist monk in an isolated floating temple where the years pass like the seasons.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(372, 'Mar adentro', 8, 'Alejandro Amenabar', 126, '2022-08-09', 7, 'The factual story of Spaniard Ramon Sampedro, who fought a thirty-year campaign in favor of euthanasia and his own right to die.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(373, 'Cinderella Man', 8, 'Ron Howard', 144, '2022-04-28', 7, 'The story of James J. Braddock, a supposedly washed-up boxer who came back to become a champion and an inspiration in the 1930s.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(374, 'Kal Ho Naa Ho', 12, 'Nikkhil Advani', 186, '2022-03-20', 0, 'Naina, an introverted, perpetually depressed girl''s life changes when she meets Aman. But Aman has a secret of his own which changes their lives forever. Embroiled in all this is Rohit, Naina''s best friend who conceals his love for her.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(375, 'Mou gaan dou', 12, 'Andrew Lau', 101, '2022-10-02', 3, 'A story between a mole in the police department and an undercover cop. Their objectives are the same: to find out who is the mole, and who is the cop.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(376, 'Pirates of the Caribbean: The Curse of the Black Pearl', 12, 'Gore Verbinski', 143, '2022-09-15', 3, 'Blacksmith Will Turner teams up with eccentric pirate "Captain" Jack Sparrow to save his love, the governor''s daughter, from Jack''s former pirate allies, who are now undead.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(377, 'Big Fish', 12, 'Tim Burton', 125, '2022-03-03', 9, 'A frustrated son tries to determine the fact from fiction in his dying father''s life.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(378, 'The Incredibles', 8, 'Brad Bird', 115, '2021-12-13', 10, 'A family of undercover superheroes, while trying to live the quiet suburban life, are forced into action to save the world.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(379, 'Yeopgijeogin geunyeo', 12, 'Jae-young Kwak', 137, '2022-12-01', 0, 'A young man sees a drunk, cute woman standing too close to the tracks at a metro station in Seoul and pulls her back. She ends up getting him into trouble repeatedly after that, starting on the train.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(380, 'Dogville', 18, 'Lars von Trier', 178, '2022-04-22', 6, 'A woman on the run from the mob is reluctantly accepted in a small Colorado community in exchange for labor, but when a search visits the town she finds out that their support has a price.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(381, 'Vizontele', 12, 'Yilmaz Erdogan', 110, '2022-05-30', 0, 'Lives of residents in a small Anatolian village change when television is introduced to them');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(382, 'Donnie Darko', 12, 'Richard Kelly', 113, '2022-08-09', 8, 'After narrowly escaping a bizarre accident, a troubled teenager is plagued by visions of a man in a large rabbit suit who manipulates him to commit a series of crimes.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(383, 'Magnolia', 12, 'Paul Thomas Anderson', 188, '2022-03-14', 8, 'An epic mosaic of interrelated characters in search of love, forgiveness, and meaning in the San Fernando Valley.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(384, 'Dancer in the Dark', 18, 'Lars von Trier', 140, '2022-02-28', 6, 'An East European girl travels to the United States with her young son, expecting it to be like a Hollywood film.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(385, 'The Straight Story', 8, 'David Lynch', 112, '2022-11-02', 7, 'An old man makes a long journey by lawnmower to mend his relationship with an ill brother.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(386, 'Pafekuto buru', 8, 'Satoshi Kon', 81, '2022-05-11', 10, 'A pop singer gives up her career to become an actress, but she slowly goes insane when she starts being stalked by an obsessed fan and what seems to be a ghost of her past.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(387, 'Festen', 12, 'Thomas Vinterberg', 105, '2022-05-13', 8, 'At Helge''s 60th birthday party, some unpleasant family truths are revealed.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(388, 'Central do Brasil', 12, 'Walter Salles', 110, '2022-07-30', 8, 'An emotive journey of a former school teacher, who writes letters for illiterate people, and a young boy, whose mother has just died, as they search for the father he never knew.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(389, 'The Iron Giant', 8, 'Brad Bird', 86, '2022-03-30', 10, 'A young boy befriends a giant robot from outer space that a paranoid government agent wants to destroy.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(390, 'Knockin'' on Heaven''s Door', 12, 'Thomas Jahn', 87, '2022-11-25', 3, 'Two terminally ill patients escape from a hospital, steal a car and rush towards the sea.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(391, 'Sling Blade', 12, 'Billy Bob Thornton', 135, '2022-05-24', 8, 'Karl Childers, a simple man hospitalized since his childhood murder of his mother and her lover, is released to start a new life in a small town.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(392, 'Secrets & Lies', 12, 'Mike Leigh', 136, '2022-01-23', 0, 'Following the death of her adoptive parents, a successful young black optometrist establishes contact with her biological mother -- a lonely white factory worker living in poverty in East London.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(393, 'Twelve Monkeys', 12, 'Terry Gilliam', 129, '2022-09-29', 5, 'In a future world devastated by disease, a convict is sent back in time to gather information about the man-made virus that wiped out most of the human population on the planet.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(394, 'Kakaku Kidatai', 8, 'Mamoru Oshii', 83, '2022-07-27', 10, 'A cyborg policewoman and her partner hunt a mysterious and powerful hacker called the Puppet Master.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(395, 'The Nightmare Before Christmas', 8, 'Henry Selick', 76, '2022-06-19', 10, 'Jack Skellington, king of Halloween Town, discovers Christmas Town, but his attempts to bring Christmas to his home causes confusion.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(396, 'Groundhog Day', 12, 'Harold Ramis', 101, '2022-11-22', 0, 'A weatherman finds himself inexplicably living the same day over and over again.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(397, 'Bound by Honor', 18, 'Taylor Hackford', 180, '2022-05-09', 6, 'Based on the true life experiences of poet Jimmy Santiago Baca, the film focuses on step-brothers Paco and Cruz, and their bi-racial cousin Miklo.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(398, 'Scent of a Woman', 12, 'Martin Brest', 156, '2022-04-29', 8, 'A prep school student needing money agrees to "babysit" a blind man, but the job is not at all what he anticipated.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(399, 'Aladdin', 8, 'Ron Clements', 90, '2022-01-07', 10, 'A kindhearted street urchin and a power-hungry Grand Vizier vie for a magic lamp that has the power to make their deepest wishes come true.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(400, 'JFK', 12, 'Oliver Stone', 189, '2022-06-15', 8, 'New Orleans District Attorney Jim Garrison discovers there''s more to the Kennedy assassination than the official story.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(401, 'Beauty and the Beast', 8, 'Gary Trousdale', 84, '2022-01-04', 10, 'A prince cursed to spend his days as a hideous monster sets out to regain his humanity by earning a young woman''s love.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(402, 'Dances with Wolves', 12, 'Kevin Costner', 181, '2022-12-03', 9, 'Lieutenant John Dunbar, assigned to a remote western Civil War outpost, befriends wolves and Indians, making him an intolerable aberration in the military.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(403, 'Do the Right Thing', 12, 'Spike Lee', 120, '2022-06-24', 0, 'On the hottest day of the year on a street in the Bedford-Stuyvesant section of Brooklyn, everyone''s hate and bigotry smolders and builds until it explodes into violence.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(404, 'Rain Man', 12, 'Barry Levinson', 133, '2022-09-18', 8, 'Selfish yuppie Charlie Babbitt''s father left a fortune to his savant brother Raymond and a pittance to Charlie; they travel cross-country.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(405, 'Akira', 8, 'Katsuhiro atomo', 124, '2022-02-15', 10, 'A secret military project endangers Neo-Tokyo when it turns a biker gang member into a rampaging psychic psychopath who can only be stopped by two teenagers and a group of psychics.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(406, 'The Princess Bride', 12, 'Rob Reiner', 98, '2021-12-31', 9, 'While home sick in bed, a young boy''s grandfather reads him the story of a farmboy-turned-pirate who encounters numerous obstacles, enemies and allies in his quest to be reunited with his true love.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(407, 'Der Himmel uber Berlin', 12, 'Wim Wenders', 128, '2022-06-30', 8, 'An angel tires of overseeing human activity and wishes to become human when he falls in love with a mortal.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(408, 'Au revoir les enfants', 12, 'Louis Malle', 104, '2022-11-25', 8, 'A French boarding school run by priests seems to be a haven from World War II until a new student arrives. He becomes the roommate of the top student in his class. Rivals at first, the roommates form a bond and share a secret.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(409, 'Tenku no shiro Rapyuta', 8, 'Hayao Miyazaki', 125, '2022-05-06', 10, 'A young boy and a girl with a magic crystal must race against pirates and foreign agents in a search for a legendary floating castle.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(410, 'The Terminator', 12, 'James Cameron', 107, '2022-09-27', 3, 'A human soldier is sent from 2029 to 1984 to stop an almost indestructible cyborg killing machine, sent from the same year, which has been programmed to execute a young woman whose unborn son is the key to humanity''s future salvation.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(411, 'Gandhi', 8, 'Richard Attenborough', 191, '2022-09-29', 7, 'The life of the lawyer who became the famed leader of the Indian revolts against the British rule through his philosophy of nonviolent protest.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(412, 'Kagemusha', 12, 'Akira Kurosawa', 180, '2022-07-03', 8, 'A petty thief with an utter resemblance to a samurai warlord is hired as the lord''s double. When the warlord later dies the thief is forced to take up arms in his place.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(413, 'Being There', 12, 'Hal Ashby', 130, '2022-03-20', 0, 'A simpleminded, sheltered gardener becomes an unlikely trusted advisor to a powerful businessman and an insider in Washington politics.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(414, 'Annie Hall', 12, 'Woody Allen', 93, '2022-04-04', 0, 'Neurotic New York comedian Alvy Singer falls in love with the ditzy Annie Hall.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(415, 'Jaws', 12, 'Steven Spielberg', 124, '2022-06-04', 9, 'When a killer shark unleashes chaos on a beach community, it''s up to a local sheriff, a marine biologist, and an old seafarer to hunt the beast down.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(416, 'Dog Day Afternoon', 8, 'Sidney Lumet', 125, '2022-02-21', 7, 'Three amateur bank robbers plan to hold up a bank. A nice simple robbery: Walk in, take the money, and run. Unfortunately, the supposedly uncomplicated heist suddenly becomes a bizarre nightmare as everything that could go wrong does.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(417, 'Young Frankenstein', 12, 'Mel Brooks', 106, '2022-02-26', 0, 'An American grandson of the infamous scientist, struggling to prove that his grandfather was not as insane as people believe, is invited to Transylvania, where he discovers the process that reanimates a dead body.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(418, 'Papillon', 8, 'Franklin J. Schaffner', 151, '2022-02-06', 7, 'A man befriends a fellow criminal as the two of them begin serving their sentence on a dreadful prison island, which inspires the man to plot his escape.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(419, 'The Exorcist', 18, 'William Friedkin', 122, '2022-03-10', 2, 'When a 12-year-old girl is possessed by a mysterious entity, her mother seeks the help of two priests to save her.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(420, 'Sleuth', 12, 'Joseph L. Mankiewicz', 138, '2022-04-06', 5, 'A man who loves games and theater invites his wife''s lover to meet him, setting up a battle of wits with potentially deadly results.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(421, 'The Last Picture Show', 12, 'Peter Bogdanovich', 118, '2022-10-08', 8, 'In 1951, a group of high schoolers come of age in a bleak, isolated, atrophied North Texas town that is slowly dying, both culturally and economically.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(422, 'Fiddler on the Roof', 12, 'Norman Jewison', 181, '2022-02-26', 8, 'In prerevolutionary Russia, a Jewish peasant contends with marrying off three of his daughters while growing anti-Semitic sentiment threatens his village.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(423, 'Il conformista', 12, 'Bernardo Bertolucci', 113, '2021-12-11', 8, 'A weak-willed Italian man becomes a fascist flunky who goes abroad to arrange the assassination of his old teacher, now a political dissident.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(424, 'Butch Cassidy and the Sundance Kid', 8, 'George Roy Hill', 110, '2022-04-05', 7, 'Wyoming, early 1900s. Butch Cassidy and The Sundance Kid are the leaders of a band of outlaws. After a train robbery goes wrong they find themselves on the run with a posse hard on their heels. Their solution - escape to Bolivia.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(425, 'Rosemary''s Baby', 12, 'Roman Polanski', 137, '2022-04-14', 8, 'A young couple trying for a baby move into a fancy apartment surrounded by peculiar neighbors.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(426, 'Planet of the Apes', 12, 'Franklin J. Schaffner', 112, '2022-04-09', 9, 'An astronaut crew crash-lands on a planet in the distant future where intelligent talking apes are the dominant species, and humans are the oppressed and enslaved.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(427, 'The Graduate', 12, 'Mike Nichols', 106, '2022-11-18', 0, 'A disillusioned college graduate finds himself torn between his older lover and her daughter.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(428, 'Who''s Afraid of Virginia Woolf?', 12, 'Mike Nichols', 131, '2022-12-09', 8, 'A bitter, aging couple, with the help of alcohol, use their young houseguests to fuel anguish and emotional pain towards each other over the course of a distressing night.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(429, 'The Sound of Music', 8, 'Robert Wise', 172, '2022-12-09', 7, 'A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(430, 'Doctor Zhivago', 12, 'David Lean', 197, '2022-04-10', 8, 'The life of a Russian physician and poet who, although married to another, falls in love with a political activist''s wife and experiences hardship during World War I and then the October Revolution.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(431, 'Per un pugno di dollari', 12, 'Sergio Leone', 99, '2022-05-02', 3, 'A wandering gunfighter plays two rival families against each other in a town torn apart by greed, pride, and revenge.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(432, '8', 12, 'Federico Fellini', 138, '2022-12-01', 8, 'A harried movie director retreats into his memories and fantasies.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(433, 'Vivre sa vie: Film en douze tableaux', 12, 'Jean-Luc Godard', 80, '2022-11-19', 8, 'Twelve episodic tales in the life of a Parisian woman and her slow descent into prostitution.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(434, 'The Hustler', 12, 'Robert Rossen', 134, '2022-05-07', 8, 'An up-and-coming pool player plays a long-time champion in a single high-stakes match.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(435, 'La dolce vita', 12, 'Federico Fellini', 174, '2022-12-05', 0, 'A series of stories following a week in the life of a philandering paparazzo journalist living in Rome.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(436, 'Rio Bravo', 12, 'Howard Hawks', 141, '2022-01-04', 3, 'A small-town sheriff in the American West enlists the help of a cripple, a drunk, and a young gunfighter in his efforts to hold in jail the brother of the local bad guy.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(437, 'Anatomy of a Murder', 18, 'Otto Preminger', 161, '2022-06-14', 6, 'In a murder trial, the defendant says he suffered temporary insanity after the victim raped his wife. What is the truth, and will he win his case?');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(438, 'Touch of Evil', 18, 'Orson Welles', 95, '2022-10-23', 6, 'A stark, perverse story of murder, kidnapping, and police corruption in a Mexican border town.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(439, 'Cat on a Hot Tin Roof', 12, 'Richard Brooks', 108, '2022-05-09', 8, 'Brick is an alcoholic ex-football player who drinks his days away and resists the affections of his wife. A reunion with his terminal father jogs a host of memories and revelations for both father and son.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(440, 'Sweet Smell of Success', 12, 'Alexander Mackendrick', 96, '2022-08-14', 8, 'Powerful but unethical Broadway columnist J.J. Hunsecker coerces unscrupulous press agent Sidney Falco into breaking up his sister''s romance with a jazz musician.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(441, 'The Killing', 18, 'Stanley Kubrick', 84, '2022-11-12', 6, 'Crook Johnny Clay assembles a five man team to plan and execute a daring race-track robbery.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(442, 'The Night of the Hunter', 18, 'Charles Laughton', 92, '2022-12-07', 6, 'A religious fanatic marries a gullible widow whose young children are reluctant to tell him where their real daddy hid the $10,000 he''d stolen in a robbery.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(443, 'La Strada', 12, 'Federico Fellini', 108, '2022-08-09', 8, 'A care-free girl is sold to a traveling entertainer, consequently enduring physical and emotional pain along the way.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(444, 'Les diaboliques', 18, 'Henri-Georges Clouzot', 117, '2022-09-02', 6, 'The wife and mistress of a loathed school principal plan to murder him with what they believe is the perfect alibi.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(445, 'Stalag 17', 12, 'Billy Wilder', 120, '2022-04-06', 0, 'When two escaping American World War II prisoners are killed, the German P.O.W. camp barracks black marketeer, J.J. Sefton, is suspected of being an informer.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(446, 'Roman Holiday', 12, 'William Wyler', 118, '2022-01-03', 0, 'A bored and sheltered princess escapes her guardians and falls in love with an American newsman in Rome.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(447, 'A Streetcar Named Desire', 12, 'Elia Kazan', 122, '2022-06-18', 8, 'Disturbed Blanche DuBois moves in with her sister in New Orleans and is tormented by her brutish brother-in-law while her reality crumbles around her.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(448, 'In a Lonely Place', 12, 'Nicholas Ray', 94, '2022-06-08', 8, 'A potentially violent screenwriter is a murder suspect until his lovely neighbor clears him. However, she soon starts to have her doubts.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(449, 'Kind Hearts and Coronets', 12, 'Robert Hamer', 106, '2022-02-05', 0, 'A distant poor relative of the Duke D''Ascoyne plots to inherit the title by murdering the eight other heirs who stand ahead of him in the line of succession.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(450, 'Rope', 18, 'Alfred Hitchcock', 80, '2022-09-23', 6, 'Two men attempt to prove they committed the perfect crime by hosting a dinner party after strangling their former classmate to death.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(451, 'Out of the Past', 18, 'Jacques Tourneur', 97, '2022-03-19', 6, 'A private eye escapes his past to run a gas station in a small town, but his past catches up with him. Now he must return to the big city world of danger, corruption, double crosses and duplicitous dames.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(452, 'Brief Encounter', 12, 'David Lean', 86, '2022-07-28', 8, 'Meeting a stranger in a railway station, a woman is tempted to cheat on her husband.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(453, 'Laura', 12, 'Otto Preminger', 88, '2022-02-20', 8, 'A police detective falls in love with the woman whose murder he is investigating.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(454, 'The Best Years of Our Lives', 12, 'William Wyler', 170, '2022-11-05', 8, 'Three World War II veterans return home to small-town America to discover that they and their families have been irreparably changed.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(455, 'Arsenic and Old Lace', 12, 'Frank Capra', 118, '2022-04-05', 0, 'A writer of books on the futility of marriage risks his reputation when he decides to get married. Things get even more complicated when he learns on his wedding day that his beloved maiden aunts are habitual murderers.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(456, 'The Maltese Falcon', 12, 'John Huston', 100, '2022-03-04', 4, 'A private detective takes on a case that involves him with three eccentric criminals, a gorgeous liar, and their quest for a priceless statuette.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(457, 'The Grapes of Wrath', 12, 'John Ford', 129, '2022-04-10', 8, 'A poor Midwest family is forced off their land. They travel to California, suffering the misfortunes of the homeless in the Great Depression.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(458, 'The Wizard of Oz', 12, 'Victor Fleming', 102, '2022-05-14', 9, 'Dorothy Gale is swept away from a farm in Kansas to a magical land of Oz in a tornado and embarks on a quest with her new friends to see the Wizard who can help her return home to Kansas and help her friends as well.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(459, 'La regle du jeu', 12, 'Jean Renoir', 110, '2022-12-09', 0, 'A bourgeois life in France at the onset of World War II, as the rich and their poor servants meet up at a French chateau.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(460, 'The Thin Man', 12, 'W.S. Van Dyke', 91, '2022-12-02', 0, 'Former detective Nick Charles and his wealthy wife Nora investigate a murder case, mostly for the fun of it.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(461, 'All Quiet on the Western Front', 12, 'Lewis Milestone', 152, '2022-02-26', 8, 'A German youth eagerly enters World War I, but his enthusiasm wanes as he gets a firsthand view of the horror.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(462, 'Bronenosets Potemkin', 12, 'Sergei M. Eisenstein', 75, '2022-10-02', 8, 'In the midst of the Russian Revolution of 1905, the crew of the battleship Potemkin mutiny against the brutal, tyrannical regime of the vessel''s officers. The resulting street demonstration in Odessa brings on a police massacre.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(463, 'Knives Out', 12, 'Rian Johnson', 130, '2022-10-23', 0, 'A detective investigates the death of a patriarch of an eccentric, combative family.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(464, 'Dil Bechara', 12, 'Mukesh Chhabra', 101, '2022-04-24', 0, 'The emotional journey of two hopelessly in love youngsters, a young girl, Kizie, suffering from cancer, and a boy, Manny, whom she meets at a support group.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(465, 'Manbiki kazoku', 18, 'Hirokazu Koreeda', 121, '2022-01-24', 6, 'A family of small-time crooks take in a child they find outside in the cold.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(466, 'Marriage Story', 12, 'Noah Baumbach', 137, '2022-07-28', 0, 'Noah Baumbach''s incisive and compassionate look at a marriage breaking up and a family staying together.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(467, 'Call Me by Your Name', 12, 'Luca Guadagnino', 132, '2022-01-23', 8, 'In 1980s Italy, romance blossoms between a seventeen-year-old student and the older man hired as his father''s research assistant.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(468, 'I, Daniel Blake', 12, 'Ken Loach', 100, '2022-04-16', 8, 'After having suffered a heart-attack, a 59-year-old carpenter must fight the bureaucratic forces of the system in order to receive Employment and Support Allowance.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(469, 'Isle of Dogs', 8, 'Wes Anderson', 101, '2022-03-23', 10, 'Set in Japan, Isle of Dogs follows a boy''s odyssey in search of his lost dog.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(470, 'Hunt for the Wilderpeople', 12, 'Taika Waititi', 101, '2022-04-30', 9, 'A national manhunt is ordered for a rebellious kid and his foster uncle who go missing in the wild New Zealand bush.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(471, 'Captain Fantastic', 12, 'Matt Ross', 118, '2022-04-01', 0, 'In the forests of the Pacific Northwest, a father devoted to raising his six kids with a rigorous physical and intellectual education is forced to leave his paradise and enter the world, challenging his idea of what it means to be a parent.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(472, 'Sing Street', 12, 'John Carney', 106, '2022-10-25', 0, 'A boy growing up in Dublin during the 1980s escapes his strained family life by starting a band to impress the mysterious girl he likes.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(473, 'Thor: Ragnarok', 12, 'Taika Waititi', 130, '2022-07-22', 3, 'Imprisoned on the planet Sakaar, Thor must race against time to return to Asgard and stop Ragnarak, the destruction of his world, at the hands of the powerful and ruthless villain Hela.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(474, 'Nightcrawler', 18, 'Dan Gilroy', 117, '2022-10-05', 6, 'When Louis Bloom, a con man desperate for work, muscles into the world of L.A. crime journalism, he blurs the line between observer and participant to become the star of his own story.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(475, 'Jojo Rabbit', 12, 'Taika Waititi', 108, '2022-01-10', 0, 'A young boy in Hitler''s army finds out his mother is hiding a Jewish girl in their home.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(476, 'Arrival', 12, 'Denis Villeneuve', 116, '2022-03-08', 8, 'A linguist works with the military to communicate with alien lifeforms after twelve mysterious spacecrafts appear around the world.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(477, 'Star Wars: Episode VII - The Force Awakens', 12, 'J.J. Abrams', 138, '2022-07-25', 3, 'As a new threat to the galaxy rises, Rey, a desert scavenger, and Finn, an ex-stormtrooper, must join Han Solo and Chewbacca to search for the one hope of restoring peace.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(478, 'Before Midnight', 12, 'Richard Linklater', 109, '2022-01-22', 8, 'We meet Jesse and Celine nine years on in Greece. Almost two decades have passed since their first meeting on that train bound for Vienna.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(479, 'X-Men: Days of Future Past', 12, 'Bryan Singer', 132, '2022-10-13', 3, 'The X-Men send Wolverine to the past in a desperate effort to change history and prevent an event that results in doom for both humans and mutants.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(480, 'Bir Zamanlar Anadolu''da', 18, 'Nuri Bilge Ceylan', 157, '2022-10-16', 6, 'A group of men set out in search of a dead body in the Anatolian steppes.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(481, 'The Artist', 12, 'Michel Hazanavicius', 100, '2021-12-22', 0, 'An egomaniacal film star develops a relationship with a young dancer against the backdrop of Hollywood''s silent era.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(482, 'Edge of Tomorrow', 12, 'Doug Liman', 113, '2021-12-24', 3, 'A soldier fighting aliens gets to relive the same day over and over again, the day restarting every time he dies.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(483, 'Amour', 12, 'Michael Haneke', 127, '2022-06-03', 8, 'Georges and Anne are an octogenarian couple. They are cultivated, retired music teachers. Their daughter, also a musician, lives in Britain with her family. One day, Anne has a stroke, and the couple''s bond of love is severely tested.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(484, 'The Irishman', 8, 'Martin Scorsese', 209, '2022-10-16', 7, 'An old man recalls his time painting houses for his friend, Jimmy Hoffa, through the 1950-70s.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(485, 'Un prophete', 18, 'Jacques Audiard', 155, '2022-03-11', 6, 'A young Arab man is sent to a French prison.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(486, 'Moon', 12, 'Duncan Jones', 97, '2022-10-14', 8, 'Astronaut Sam Bell has a quintessentially personal encounter toward the end of his three-year stint on the Moon, where he, working alongside his computer, GERTY, sends back to Earth parcels of a resource that has helped diminish our planet''s power p');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(487, 'Lat den ratte komma in', 18, 'Tomas Alfredson', 114, '2022-12-02', 6, 'Oskar, an overlooked and bullied boy, finds love and revenge through Eli, a beautiful but peculiar girl.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(488, 'District 9', 12, 'Neill Blomkamp', 112, '2022-10-10', 3, 'Violence ensues after an extraterrestrial race forced to live in slum-like conditions on Earth finds a kindred spirit in a government agent exposed to their biotechnology.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(489, 'The Wrestler', 12, 'Darren Aronofsky', 109, '2022-07-28', 8, 'A faded professional wrestler must retire, but finds his quest for a new life outside the ring a dispiriting struggle.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(490, 'Jab We Met', 12, 'Imtiaz Ali', 138, '2022-09-01', 0, 'A depressed wealthy businessman finds his life changing after he meets a spunky and care-free young woman.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(491, 'Boyhood', 12, 'Richard Linklater', 165, '2022-11-29', 8, 'The life of Mason, from early childhood to his arrival at college.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(492, '4 luni, 3 saptamani si 2 zile', 12, 'Cristian Mungiu', 113, '2022-04-05', 8, 'A woman assists her friend in arranging an illegal abortion in 1980s Romania.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(493, 'Star Trek', 12, 'J.J. Abrams', 127, '2022-02-07', 3, 'The brash James T. Kirk tries to live up to his father''s legacy with Mr. Spock keeping him in check as a vengeful Romulan from the future creates black holes to destroy the Federation one planet at a time.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(494, 'In Bruges', 12, 'Martin McDonagh', 107, '2021-12-25', 0, 'Guilt-stricken after a job gone wrong, hitman Ray and his partner await orders from their ruthless boss in Bruges, Belgium, the last place in the world Ray wants to be.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(495, 'The Man from Earth', 12, 'Richard Schenkman', 87, '2022-02-12', 8, 'An impromptu goodbye party for Professor John Oldman becomes a mysterious interrogation after the retiring scholar reveals to his colleagues he has a longer and stranger past than they can imagine.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(496, 'Letters from Iwo Jima', 12, 'Clint Eastwood', 141, '2022-08-20', 3, 'The story of the battle of Iwo Jima between the United States and Imperial Japan during World War II, as told from the perspective of the Japanese who fought it.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(497, 'The Fall', 12, 'Tarsem Singh', 117, '2022-10-17', 9, 'In a hospital on the outskirts of 1920s Los Angeles, an injured stuntman begins to tell a fellow patient, a little girl with a broken arm, a fantastic story of five mythical heroes. Thanks to his fractured state of mind and her vivid imagination, the');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(498, 'Life of Pi', 12, 'Ang Lee', 127, '2022-10-10', 9, 'A young man who survives a disaster at sea is hurtled into an epic journey of adventure and discovery. While cast away, he forms an unexpected connection with another survivor: a fearsome Bengal tiger.');
insert into movie(id,title,age_restriction, director, duration, premier_date,  category_id, description)
values(499, 'Fantastic Mr. Fox', 8, 'Wes Anderson', 87, '2022-07-30', 10, 'An urbane fox cannot resist returning to his farm raiding ways and then must help his community survive the farmers'' retaliation.');
