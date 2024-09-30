create table people(
	id int primary key identity(1, 1),
	name nvarchar(30) not null,
	age int,
	check (age<200),
	number int,
	city nvarchar(20) default 'india');


	insert into people(name, age, number) values('goku', 35, 123455),
														('vegeta', 36, 123456),
														('goku', 35, 123455);

	select * from people;

	update people set name='gohan', number=123457 where id = 3;
	select * from people;