USE ecommerce;

INSERT INTO cliente (nome, endereco, email, celular, dt_nasc)
values('Tomás Oliveira Goncalves', 'Rua Águas Formosas 1987', 'TomasOliveiraGoncalves@jourrapide.com', '3160355757', '1941-04-06'),
	('Daniel Silva Martins', 'Estrada dos Cedros 784', 'DanielSilvaMartins@jourrapide.com', '1125357256', '1960-08-06'),
	('Thaís Souza Lima', 'Rua Aquiles Albano 1196', 'ThaisSouzaLima@rhyta.com', '1695154627', '1990-05-20'),
	('André Pereira Ferreira', 'Via Local L 1050', 'AndrePereiraFerreira@dayrep.com', '7132347666', '2002-11-24'),
	('Martim Santos Almeida', 'Rua Manoel Tabosa 233', 'MartimSantosAlmeida@rhyta.com', '8176593355', '1945-02-22'),
	('Clara Alves Pereira', 'Rua Guaianases 1856', 'ClaraAlvesPereira@armyspy.com', '4330677668', '1990-10-04'),
	('Fernanda Araujo Barros', 'Rua Francisco Gobbatto 1541', 'FernandaAraujoBarros@rhyta.com', '5432786793', '1965-01-10'),
	('Lavinia Almeida Barbosa', 'Rua Albino Kieling 587', 'LaviniaAlmeidaBarbosa@jourrapide.com', '5140997732', '1982-10-01'),
	('Tiago Cardoso Ferreira', 'Travessa Vinte e Oito de Janeiro 227', 'TiagoCardosoFerreira@jourrapide.com', '7175942750','1995-05-16'),
	('Julian Ribeiro Gomes', 'Condomínio Sambaqui 222', 'JulianRibeiroGomes@armyspy.com', '4874562648', '2005-06-09');


INSERT INTO produto (nome_produto, preco, descricao, quantidade_estoque)
values('Fraldas descartáveis', 36, 'Fraldas Descartáveis, tamanho M', 30),
	 ('Almofada Personalizada', 15, 'Almofadas personalizadas, 30cm de largura, 40cm de comprimento', 50), 
	 ('Liquidificador', 300, 'liquidificador preto, 2L E 900W, 12 velocidades', 80),
	 ('Iphone 15 pro max', 9000, 'smartphone apple,Resolução de 2556 x 1179 pixels a 460 ppp, 6.1 polegadas', 1500), 
	 ('Carregador portátil', 20, 'Carregador portátil com capacidade de 10000mAh, duas portas USB', 60), 
	 ('Fone de ouvido sem fio', 90, 'Fone de ouvido Bluetooth com cancelamento de ruído, bateria de longa duração', 30), 
	 ('Impressora', 800, 'Impressora Multifuncional HP Smart Tank 581, Tanque de Tinta Colorida Wi-Fi com autorreparo, USB', 70), 
	 ('Relógio de pulso analógico', 45, 'Relógio de pulso analógico de couro', 67), 
	 ('Caixa de Lápis', 100, 'lápis fabercastel coloridos com 56 cores vibrantes', 90), 
	 ('Garrafa térmica', 45, 'Garrafa térmica de aço inoxidável, capacidade de 500ml, mantém líquidos quentes por 12 horas', 55);
 
 INSERT INTO pedidos(id_cliente, dt_compra,valor_total,dt_entrega)
 values (1, '2024-03-30', 36.00,'2024-04-10'), 
	(2, '2024-03-31', 15.00, '2024-04-06'), 
	(3, '2024-04-01', 300.00,'2024-04-07'), 
	(4,'2024-04-02',9000.00,'2024-04-08'), 
	(5,'2024-04-03', 20.67,'2024-04-09'), 
	(6, '2024-04-04', 93.50,'2024-04-10'), 
	(7, '2024-04-05',800.00,'2024-04-11'), 
	(8, '2024-04-10', 45.00, '2024-04-12'),
	(9, '2024-03-08', 100.00, '2024-04-04'),
	(10, '2024-03-25', 45.00, '2024-04-02');
 
INSERT INTO itens (id_produto, id_pedido,preco,quantidade, valor_total)
values (1, 1, 1, 36.00, 36.00),
(1, 2, 1, 15.00, 15.00),
(2, 3, 1, 300.00, 300.00),
(3, 4, 1, 9000.00, 9000.00),
(1, 5, 1, 20.67, 20.67),
(2, 3, 1, 93.50, 93.50),
(1, 2, 1, 800.00, 800.00),
(2, 1, 1, 45.00, 45.00),
(3, 5, 1, 100.00, 100.00),
(4, 3, 1, 45.00, 45.00);

UPDATE cliente SET celular = '(81) 37238-1213' WHERE id_cliente = 1;
UPDATE produto SET quantidade_estoque = 90 WHERE id_produto = 2;
UPDATE pedidos SET valor_total = 259.07 WHERE id_pedido = 3;
UPDATE itens SET quantidade_estoque = 9 WHERE id_item = 4;

DELETE FROM cliente WHERE id_cliente = 10;
DELETE FROM produto WHERE id_produto = 9;

select * from cliente;
select * from produto;
select * from pedidos;
select * from itens;