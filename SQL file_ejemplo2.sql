create table products(
id int not null auto_increment,
name varchar(50) not null,
created_by int not null,
marca varchar(50) not null,
primary key(id),
foreign key(created_by) references user(id)
);
-- DROP table product;

rename table products to product;

insert into product (name, created_by, marca)
values
	('iPad',1, 'apple'),
    ('iPhone',1, 'apple'),
    ('watch',2, 'apple'),
    ('macbook',1, 'apple'),
    ('imac',3, 'apple'),
	('iPad mini',2, 'apple');
    
    select * from product;

select u.id, u.email, p.name from user u left join product p on u.id = p.created_by;
-- nos va a traer los usuarios y sus productos asociados

select u.id, u.email, p.name from user u right join product p on u.id = p.created_by;
-- nos va a traer los productos con sus usuarios asociados

select u.id, u.email, p.name from user u inner join product p on u.id = p.created_by;
-- tantos usuarios como productos esten asociados, osea la interseccion entre las tablas

select u.id, u.name, p.id, p.name from user u cross join product p;
-- producto carteasiano entre dos tablas (puede ser potencialmente gigantesco)

select count(id), marca from product group by marca;

select count(p.id), u.name from product p left join user u on u.id = p.created_by group by p.created_by;

select count(p.id), u.name from product p left join user u 
on u.id = p.created_by group by p.created_by
having count(p.id) >=2;

drop table product;

CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `id` INT NOT NULL,
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)