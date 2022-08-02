
use entrevista
drop table cliente
create table cliente (
CodigoCliente int unsigned not null auto_increment primary key,
Nome varchar(100),
Telefone varchar(100),
Cidade varchar(100));
select * from Cliente
insert into Cliente values(default,'Fulano','222-2222','Belo HOrizonte');
insert into Cliente values(default,'Ciclano','222-2222','Contagem');
insert into Cliente values(default,'Beltrano','222-2222','Belo HOrizonte');
drop table Pedido;
create table Pedido(
CodigoPedido int,
Datas date,
Status varchar(100),
CodigoCliente int  references Cliente(CodigoCliente));
drop table Pedido;
select * from Pedido
insert into Pedido(CodigoPedido,CodigoCliente,Datas,Status) values(1,1,'2000-01-01','Pendente');
insert into Pedido(CodigoPedido,CodigoCliente,Datas,Status) values(2,1,'2000-01-01','Entregue');
insert into Pedido(CodigoPedido,CodigoCliente,Datas,Status) values(1,2,'2000-01-01','Pendente');
insert into Pedido(CodigoPedido,CodigoCliente,Datas,Status) values(2,2,'2000-01-01','Entregue');

create table Item(

CodigoPedido int  references Pedido(CodigoPedido),
NumeroItem int,
CodigoProduto int references Produto(CodigoProduto),
Quantidade int);

-- tabela item insert--
insert into Item (CodigoPedido,NumeroItem,CodigoProduto,Quantidade) values(1,1,1,10);
insert into Item (CodigoPedido,NumeroItem,CodigoProduto,Quantidade) values(1,2,2,20);
insert into Item (CodigoPedido,NumeroItem,CodigoProduto,Quantidade) values(2,1,1,5);
insert into Item (CodigoPedido,NumeroItem,CodigoProduto,Quantidade) values(2,1,2,15);
select * from Item;


create table Produto(
CodigoProduto int,
Descricao varchar(100),
Preco double,
Estoque int
)
insert into Produto values(1,'Produto A',50.00,300);
insert into Produto values(2,'Produto B',26.00,400);

select * from produto

select * from cliente 
where cidade = 'Belo HOrizonte';

select c.nome , p.CodigoPedido,p.Status
 from cliente c
 join  Pedido p
 on c.CodigoCliente = p.CodigoCliente
 and Status ='Pendente' and p.CodigoCliente =1;
 
 select * from Pedido
 where CodigoPedido =1;


  
where Status = 'Pendente'
and CodigoCliente =1;

SELECT  Count(*),Status
FROM Pedido
GROUP BY Status;


