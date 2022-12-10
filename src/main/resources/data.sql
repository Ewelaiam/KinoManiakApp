insert into movie_category(id,category_name)
values(1,'familijny'), (2,'horror'),(3,'przygodowy'),(4,'akcji');
-- commit;
insert into movie(title,age_restriction, description, director, duration, premier_date,  category_id)
values('Cars',8,'about cars','John Lasseter',120,date('2006-05-26'),1);
insert into movie(title,age_restriction, description, director, duration, premier_date,  category_id)
values('Cars 2',8,'about cars 2','John Lasseter',110,date('2020-09-26'),1);
commit;
