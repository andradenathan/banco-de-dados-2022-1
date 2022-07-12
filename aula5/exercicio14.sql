/**
    Autor: Nathan Andrade

    Descobrir o valor total da folha de
    pagamento dessa empresa (soma dos
    salários de todos os funcionários).
**/

SELECT SUM(Salario) AS total_salario FROM Funcionario f;