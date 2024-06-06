use avaliacao_22c;

select * from Livros
where disponivel = true;

select * from Livros
where editora = "HarperCollins";

select * from Livros
where ano_publicacao between 2000 and 2010;

select autor, count(titulo) from Livros
group by autor
having count(titulo) > 3;

select * from Livros
where titulo like "%Senhor%";

select * from livros
where categoria in("Fantasia", "Ficção Científica", "Fábula");

select distinct idioma from Livros;

select * from Livros
where quantidade_paginas between 200 and 400;

select exists (
    select 1
    from Livros
    where categoria = 'História'
); -- não entendi como utilizar o exists, então apenas colei e adaptei o que ví nos sites

select titulo, ano_publicacao from Livros
order by ano_publicacao;
