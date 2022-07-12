/*
    Autor: Nathan Andrade

    Retornar os nomes dos funcionários cujo
    salário é maior do que o salário de todos os
    funcionários do departamento 5.
*/

SELECT Pnome, Salario FROM Funcionario f 
WHERE Salario > ALL (SELECT Salario FROM Funcionario WHERE Dnr = 5)