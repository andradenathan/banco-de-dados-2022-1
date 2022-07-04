/**
    Autor: Nathan Andrade
    
    Listar os números dos departamentos cuja
    soma salarial dos funcionários com salário
    superior a 25.000 seja inferior a 100.000.
**/

SELECT Dnr, SUM(Salario) AS soma_salarial FROM Funcionario f 
WHERE Salario > 25000
GROUP BY Dnr
HAVING soma_salarial < 100000
