/*
    Autor: Nathan Andrade

    Descobrir os nomes dos funcionários que
    trabalham em todos os projetos controlados
    pelo departamento número 5.
*/

SELECT Pnome FROM Funcionario
WHERE Cpf IN (
	SELECT Fcpf FROM Trabalha_em 
	INNER JOIN Projeto ON Pnr = Projnumero
	WHERE Dnum = 5
	GROUP BY Fcpf
	HAVING COUNT(Projnumero) = (SELECT COUNT(*) FROM Projeto WHERE Dnum = 5)
)