--create table
create table tbl_product (id int primary key auto_increment, name varchar(50), price int, 
description text, stock int);

--add record
insert into tbl_product values('', 'Es Teh', 4000, 'Teh tawar dengan es', 100),
('', 16000, 'Es Pisang Ijo', 'Pisang warna ijo dikasih es', 240),........

--update data
update tbl_product set price = 20000 where id = 2;

--delete record
delete from tbl_product where id = 4;

--search record
select * from tbl_product where name like '%ijo';

--sort data from price column
select * from tbl_product order by price asc;

--limit and offset
select * from tbl_product limit 3 offset 7;