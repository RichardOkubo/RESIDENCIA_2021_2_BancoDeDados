/* 5. 2 SQLs de atualização */

/*
a. Um SQL que altere o valor do salário de todos os funcionários, 
   aumentando em 10%;
*/

update funcionario
set salario = salario + (salario * 0.10);
--where salario > 0;

select * from funcionario;

/*
b. Um SQL que altere o email e o telefone de um cliente qualquer 
   cadastrado.
*/

-- Antes: email -> alexandrecardoso@gmail.com
update email
set email = 'shoke_cs.4ever@hotmail.com'
where codigo_email = 1;

select * from email;

-- Antes: telefone -> +55 (97) 91026-6301
update telefone
set
    --ddi = '+55',
    ddd = '(24)',
    numero = '98833-3234'
where codigo_tel = 1;

select * from telefone;