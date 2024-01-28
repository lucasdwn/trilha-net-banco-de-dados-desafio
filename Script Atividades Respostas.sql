USE Filmes

-- ATIVIDADE 1 

SELECT Nome, Ano FROM Filmes;


-- ATIVIDADE 2

SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC;

-- ATIVIDADE 3 

SELECT Nome, Ano, Duracao FROM FILMES WHERE Nome = 'De Volta para o Futuro';

-- ATIVIDADE 4

SELECT * FROM Filmes WHERE Ano = 1997;

-- ATIVIDADE 5

SELECT * FROM Filmes WHERE Ano > 2000;

-- ATIVIDADE 6

SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC;

-- ATIVIDADE 7 
-- OBSERVAÇÃO : FIZ 2 SELECTS, UM ORDENANDO PELA DURAÇÃO EM ORDEM DECRESCENTE COMO ESTAVA NA DESCRIÇÃO DA ATIVIDADE
-- E OUTRO ORDENANDO PELA QUANTIDADE EM ORDEM DECRESCENTE PORQUE É COMO ESTAVA SENDO EXEMPLIFICADO NA IMAGEM DE RESULTADO.

SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY MAX(Duracao) DESC;
SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

-- ATIVIDADE 8

SELECT ID, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M';

-- ATIVIDADE 9

SELECT ID, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;


-- ATIVIDADE 10

SELECT f.Nome, g.Genero from Filmes f
INNER JOIN FilmesGenero fg ON fg.IdFilme = f.Id
INNER JOIN Generos g ON g.Id = fg.IdGenero;

-- ATIVIDADE 11

SELECT f.Nome, g.Genero from Filmes f
INNER JOIN FilmesGenero fg ON fg.IdFilme = f.Id
INNER JOIN Generos g ON g.Id = fg.IdGenero
WHERE Genero = 'Mistério';

-- ATIVIDADE 12

SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from Filmes f
INNER JOIN ElencoFilme ef ON ef.IdFilme = f.id
INNER JOIN Atores a ON a.Id = ef.IdAtor;
