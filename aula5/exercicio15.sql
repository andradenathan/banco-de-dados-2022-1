/*
    Autor: Nathan Andrade
*/

SELECT MIN(Salario) AS menor_salario, Dnome FROM Funcionario f 
INNER JOIN Departamento d ON Dnumero = Dnr 
GROUP BY Dnr;