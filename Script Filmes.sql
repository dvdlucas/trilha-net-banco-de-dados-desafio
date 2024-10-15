SELECT 
Nome,
Ano
FROM dbo.Filmes;

SELECT 
Nome,
Ano
FROM dbo.Filmes
ORDER BY Ano ASC;

SELECT
*
FROM dbo.Filmes
WHERE Nome Like '%De Volta para o Futuro%';

SELECT
*
FROM dbo.Filmes
WHERE Ano = '1997';

SELECT
*
FROM dbo.Filmes
WHERE Ano > '2000';

SELECT
*
FROM dbo.Filmes
WHERE Duracao >'100' and Duracao < '150'
ORDER BY Duracao ASC;

SELECT
Ano ,
Count(Filmes.Ano) as Quantidade
FROM dbo.Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

SELECT 
*
FROM Atores
WHERE Genero = 'M'

SELECT 
*
FROM Atores
WHERE Genero = 'F'

SELECT
F.Nome,
G.Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG ON FG.IdFilme = F.Id
INNER JOIN  Generos AS G ON G.Id = FG.IdGenero;

SELECT
F.Nome,
G.Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG ON FG.IdFilme = F.Id
INNER JOIN  Generos AS G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério';

SELECT
F.Nome,
A.PrimeiroNome,
A.UltimoNome,
EF.Papel
FROM Filmes AS F
INNER JOIN ElencoFilme AS EF ON EF.IdFilme = F.Id
INNER JOIN Atores AS A ON A.Id = EF.IdAtor
