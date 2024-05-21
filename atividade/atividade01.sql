USE avaliacao_22c;

INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES 
("As Crônicas de Nárnia","C.S Lewis","1950",TRUE,"Fantasia","978-0064471190","HarperCollins","768","Francês");

INSERT INTO livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES 
("Cem Anos de Solidão", 'Gabriel Garcia Marquez', 1967, TRUE, "Ficção", '978-0241968581', "Penguin Books", 422, "Espanhol"),
("Harry Potter e a Pedra Filosofal", 'J.K. Rowling', 1997, TRUE, "Fantasia", '978-0439708180', "Bloomsbury", 309, "Inglês"),
("O Senhor dos Anéis: A Sociedade do Anel", 'J.R.R. Tolkien', 1954, TRUE, "Fantasia", '978-0618640157', "HarperCollins", 423, "Inglês");

INSERT INTO livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES 
('SPQR - Uma História da Roma Antiga','Mary Beard','2015',TRUE,'História','978-6544354365','Crítica','576','inglês');


UPDATE Livros
SET idioma = 'inglês'
WHERE editora = 'Penguin Books';

UPDATE Livros
SET titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)'
WHERE isbn ='978-0439708180' ;

DELETE FROM Livros
WHERE categoria= 'Terror';

DELETE FROM Livros
WHERE idioma = 'Francês' and ano_publicacao < 1970;

DELETE FROM livros
WHERE titulo ="As Crônicas de Nárnia";

DELETE FROM livros
WHERE editora =  "Penguin Books";

SELECT * FROM livros
WHERE quantidade_paginas > 500;


SELECT categoria, COUNT(categoria) quantidade
FROM livros
GROUP BY categoria;

SELECT titulo
FROM Livros
LIMIT 5;


select SUM(quantidade_paginas), AVG(quantidade_paginas) FROM livros
where categoria = 'drama';

SELECT AVG(ano_publicacao)
FROM Livros
WHERE disponivel = TRUE;

SELECT * FROM livros WHERE(ano_publicacao) IN (
select MAX(ano_publicacao) FROM livros
UNION 
SELECT MIN(ano_publicacao) FROM livros);



SELECT * FROM Livros
ORDER BY ano_publicacao DESC;

SELECT * FROM Livros
WHERE idioma = 'inglês'

UNION

SELECT * FROM livros
WHERE idioma = 'Português';

SELECT * FROM livros
WHERE autor =  "George Orwell";



