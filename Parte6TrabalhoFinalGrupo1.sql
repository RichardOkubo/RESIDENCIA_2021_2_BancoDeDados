/*
6. SQL de exclusão, dos clientes que foram cadastrados sem o caractere
   “@” no email ou que possuem uma senha com menos de 8 caracteres.
*/

-- Ana Luiza Campos (codigo_cliente = 2) -> analuizacamposcunha.br
delete from email
where email not like '%@%';

select * from email;

-- Kevin da Costa (codigo_acesso = 3) -> Jh$FAJ
delete from acesso
where length(senha) < 8;

select * from acesso;