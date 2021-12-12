--create table_product
create table table_product (id int primary key auto_increment, product_name varchar(50), price int, cat_id int);

--add record to table_product
insert into table_product values ('', 'Indomie', 2500, 1), ('', 'Coca Cola', 5000, 2).....

--create table_transaciton
create table table_transaction (id int primary key auto_increment, id_inv varchar(50), id_product int, qty int);

--add record to table_transaction
insert into table_transaction values ('', 'INV-001', 1, 40), ('', 'INV-001', 2, 2), .....

--create table_inv for invoice
create table_inv (invoice varchar(50), date varchar(50), total int);

--add record to table_inv
insert into table_inv ('INV-001', '01/01/21', 120000), ('INV-002', '02/01/21', 50000)......

-- create table_cat
create table table_cat (id int primary key auto_increment, cat_name varchar(50));

--add record to table_cat
insert into table_cat ('', 'Mie Instan'), ('', 'Soda'), ('','Air Mineral');

--add foreign key 
ALTER TABLE table_transaction ADD FOREIGN KEY(id_inv) REFERENCES table_inv(invoice) ON UPDATE CASCADE ON DELETE RESTRICT;
ALTER TABLE table_transaction ADD FOREIGN KEY(id_product) REFERENCES table_product(id) ON UPDATE CASCADE ON DELETE RESTRICT;

--join three tables (table_transaction, inv, and product)
select * from table_transaction inner join table_inv on table_transaction.id_inv = table_inv.invoice
inner join table_product on table_transaction.id_product = table_product.id



