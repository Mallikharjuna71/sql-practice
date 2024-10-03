create table videos(

	id int identity primary key,
	name nvarchar(30)unique not null,
	length int not null,
	zoner nvarchar(20),
	posted datetime,
	likes int default 0,
	check (length >= 0)

	);


insert into videos(name, length, zoner, posted)  values('surfing', 10, 'sports', '2024-09-30'),
('exersize', 10, 'health', '2024-09-30'),
('cooking', 10, 'food', '2024-08-30'),
('cricket', 10, 'sports', '2024-08-30')


select count(*) as cnt from videos group by likes having count(*)>2;

select posted , name from videos where datepart(month, posted) = '8';

exec sp_help 'videos';

update videos set posted = dateadd(day, 3, posted) where datepart(month, posted)='08';
select * from videos;


select datepart(HOUR, posted) from videos where length = 10;

alter table videos alter column  views int default 0;
select * from videos;

alter table videos drop column likes;
select * from videos;

alter table videos add share int default 0;
select * from videos;
