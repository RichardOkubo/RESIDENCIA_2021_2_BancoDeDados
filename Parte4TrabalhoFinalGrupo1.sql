/* 4. 4 SQLs de consulta */

/*
a. Uma consulta mostrando todos os produtos cadastrados, 
   com o nome da categoria e o nome do funcionário que o cadastrou;
*/

select
    produto.codigo_produto as "Nº produto",
    produto.nome as "Produto",
    categoria.nome as "Categoria",
    funcionario.nome || ' ' || funcionario.sobrenome as "Nome (funcionário)"
from produto
join categoria using(codigo_categoria)
join funcionario using(codigo_funcionario);

/*
b. Uma consulta mostrando todos os pedidos feitos (sem os itens 
   do pedido), com o nome e telefone do cliente;
*/

select
    pedido.codigo_pedido as "Nº pedido",
    --pedido.data_pedido as "Data do pedido",
    cliente.nome || ' ' || cliente.sobrenome as "Nome (cliente)",
    telefone.ddi || ' ' || telefone.ddd || ' ' || telefone.numero as "Telefone"
from pedido
join cliente using (codigo_cliente)
join telefone using (codigo_cliente);

/*
c. Uma consulta mostrando todos os pedidos feitos, com seus itens,
   mostrando: número do pedido, nome do cliente, data do pedido, 
   nome do produto comprado e a quantidade comprada de cada 
   produto;
*/

select
    pedido.codigo_pedido as "Nº pedido",
    cliente.nome || ' ' || cliente.sobrenome as "Nome (cliente)",
    pedido.data_pedido as "Data do pedido",
    produto.nome as "Produto",
    pedido.qtd_pedido as "Quantidade comprada"
from produto
join pedido using (codigo_pedido)
join cliente using (codigo_cliente);
    
/*
d. Uma consulta mostrando a quantidade de pedidos por cliente, 
   com resultado ordenado por nome do cliente, de modo crescente.
*/

select
    cliente.nome || ' ' || cliente.sobrenome as "Nome (cliente)",
    pedido.qtd_pedido as "Quantidade de pedido"
from produto
join pedido using (codigo_pedido)
join cliente using (codigo_cliente)
order by cliente.nome;
