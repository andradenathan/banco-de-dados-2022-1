/**
    Autor: Nathan Andrade
    
    Listar os nomes de todos os
    funcionários com dois ou mais
    dependentes.
**/

SELECT Pnome, COUNT(Fcpf) AS qtd_dependentes FROM Funcionario f
INNER JOIN Dependente d ON Fcpf = Cpf
GROUP BY Pnome
HAVING qtd_dependentes >= 2