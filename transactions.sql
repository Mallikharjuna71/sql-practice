create table videos(
	
	id int identity primary key,
	name nvarchar(30)unique not null,
	length int not null,
	zoner nvarchar(20),
	posted datetime,
	likes int default 0,
	views int default 0

	);


insert into videos(name, length, zoner, posted)  values('surfing', 10, 'sports', '2024-09-30'),
('exersize', 10, 'health', '2024-09-30'),
('cooking', 10, 'food', '2024-08-30'),
('cricket', 10, 'sports', '2024-08-30')


begin transaction 
	insert into videos(name, length, zoner, posted)  values('football', 20, 'sports', '2024-09-30'),
('tennis', 15, 'sports', '2024-09-30'),
('badminton', 10, 'sports', '2024-08-30'),
('volleyball', 9, 'sports', '2024-08-30')
	update videos set length=12 where length=9
	if @@ROWCOUNT = 2 rollback transaction
	else commit transaction 
select * from videos