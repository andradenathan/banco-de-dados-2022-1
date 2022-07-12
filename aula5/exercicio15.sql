/*
    Autor: Nathan Andrade

    Descobrir o valor do menor salário
    recebido por departamento.
*/

SELECT MIN(Salario) AS menor_salario, Dnome FROM Funcionario f 
INNER JOIN Departamento d ON Dnumero = Dnr 
GROUP BY Dnr;