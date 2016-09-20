--Questão 1

SELECT nome, marca, tipo FROM impressoras;

--Questão 2

SELECT pessoas.nome, cargo.nome, salario
FROM funcionarios, pessoas, cargo
WHERE pessoas_id=pessoas.id AND cargo_id=cargo.id;

--Questão 3

SELECT cidade FROM atendimento GROUP BY cidade;

--Questão 4

SELECT * FROM atendimento;

--Questão 5

SELECT nome
FROM pessoas, clientes, atendimento
WHERE clientes_id=pessoas_id AND pessoas_id=id
GROUP BY id
HAVING MONTH(data)=12 AND YEAR(data)=2015;

--Questão 6

SELECT nome, AVG(valor)
FROM atendimento, funcionarios, pessoas
WHERE funcionarios_id=pessoas_id AND pessoas_id=id
GROUP BY id;

--Questão 7

SELECT id, nome, SUM(num_paginas)
FROM impressoras, atendimento
WHERE impressoras_id=id
GROUP BY id;

--Questão 8

SELECT YEAR(data), SUM(valor)
FROM atendimento
GROUP BY YEAR(data)
ORDER BY YEAR(data);

--Questão 9

SELECT MONTH(data), YEAR(data), SUM(valor)
FROM atendimento
GROUP BY MONTH(data)
ORDER BY YEAR(data), MONTH(data) DESC;

--Questão 10

SELECT nome, SUM(valor)
FROM pessoas, funcionarios, atendimento
WHERE funcionarios_id=pessoas_id AND pessoas_id=id
GROUP BY id
ORDER BY SUM(valor) DESC;

--Questão 11

SELECT nome, MONTH(data), YEAR(data), COUNT(num_paginas)
FROM pessoas, funcionarios, atendimento
WHERE funcionarios_id=pessoas_id AND pessoas_id=id
GROUP BY id
ORDER BY nome, YEAR(data), MONTH(data) DESC;
