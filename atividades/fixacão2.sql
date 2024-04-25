
USE LISTA02;


-- lista 2
SELECT sum(quantidade_estoque) FROM produtos;

SELECT avg(preco) FROM produtos;

SELECT * FROM produtos
WHERE nome LIKE '%Modelo 20%';

SELECT nome, preco, descricao FROM produtos
WHERE preco BETWEEN 50 and 100;

SELECT nome, preco FROM produtos
ORDER BY preco ASC
LIMIT 5;

SELECT nome FROM produtos
WHERE quantidade_estoque=0;

SELECT nome, descricao FROM produtos
WHERE descricao != '';

SELECT nome, preco FROM produtos
WHERE preco > (SELECT AVG(preco) FROM produtos);

SELECT * FROM produtos
WHERE nome like '%SSD%';

SELECT nome, preco FROM produtos
ORDER BY preco DESC;

SELECT nome, quantidade_estoque FROM produtos 
WHERE quantidade_estoque%2=0;


SELECT nome, descricao FROM produtos
WHERE preco<100 and quantidade_estoque>0; 	
