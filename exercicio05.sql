
SELECT Projnumero, Minicial, Unome FROM Projeto
JOIN Trabalha_em ON Trabalha_em.Pnr = Projnumero
JOIN Funcionario ON Funcionario.cpf = Trabalha_em.Fcpf
WHERE Funcionario.Unome = 'Silva';