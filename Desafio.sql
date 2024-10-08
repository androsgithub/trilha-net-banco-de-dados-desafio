--1
SELECT NOME,ANO FROM dbo.Filmes;
--2
SELECT NOME,ANO FROM dbo.Filmes ORDER BY ANO ASC;
--3
SELECT NOME,ANO, DURACAO FROM dbo.Filmes WHERE NOME = 'DE VOLTA PARA O FUTURO';
--4
SELECT NOME,ANO, DURACAO FROM dbo.Filmes WHERE ANO = 1997;
--5
SELECT NOME,ANO, DURACAO FROM dbo.Filmes WHERE ANO > 2000;
--6
SELECT NOME,ANO, DURACAO FROM dbo.Filmes WHERE DURACAO > 100 AND DURACAO < 150 ORDER BY DURACAO ASC;
--7
SELECT ANO, COUNT(*) QUANTIDADE FROM dbo.Filmes GROUP BY ANO ORDER BY QUANTIDADE DESC;
--8
SELECT ID,PRIMEIRONOME,ULTIMONOME,GENERO FROM dbo.Atores WHERE GENERO = 'M';
--9
SELECT ID,PRIMEIRONOME,ULTIMONOME,GENERO FROM dbo.Atores WHERE GENERO = 'F' ORDER BY PRIMEIRONOME;
--10
SELECT F.NOME,G.Genero FROM DBO.Filmes F JOIN FilmesGenero FG ON F.Id = FG.IdFilme JOIN GENEROS G ON FG.IdGenero = G.Id;
--11
SELECT F.NOME,G.Genero FROM DBO.Filmes F JOIN FilmesGenero FG ON F.Id = FG.IdFilme JOIN GENEROS G ON FG.IdGenero = G.Id WHERE G.Genero = 'MISTÉRIO';
--12
SELECT F.NOME, A.PRIMEIRONOME,A.ULTIMONOME, EF.Papel FROM FILMES F JOIN ElencoFilme EF ON F.Id = EF.IdFilme JOIN Atores A ON EF.IdAtor= A.Id;