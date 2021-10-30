--create database trabalho_final_grupo1;
 
drop table if exists produto;
drop table if exists funcionario;
drop table if exists categoria;
drop table if exists pedido;
drop table if exists email;
drop table if exists telefone;
drop table if exists cliente;
drop table if exists acesso;
drop table if exists endereco;

create table if not exists endereco (
    codigo_end integer generated always as identity,
    pais varchar(60),
    uf char(2) not null,
    cidade varchar(60) not null,
    bairro varchar(60) not null,
    logradouro varchar(20) not null,
    localidade varchar(40) not null,
    num_end varchar(10),
    complemento varchar(60),
    cep varchar(9) not null,
    primary key(codigo_end)
);

create table if not exists acesso (
    codigo_acesso integer generated always as identity,
    usuario varchar(30) unique not null,
    senha varchar(30) not null,
    primary key (codigo_acesso)
 );

create table if not exists cliente (
    codigo_cliente integer generated always as identity,
    codigo_acesso integer not null,
    codigo_end integer not null,
    nome varchar(100) not null,
    sobrenome varchar(100) not null,
    cpf varchar (14) unique not null,
    data_nascimento date not null,
    foreign key (codigo_acesso) references acesso (codigo_acesso) on delete cascade,
    foreign key (codigo_end) references endereco (codigo_end),
    primary key (codigo_cliente)
);

create table if not exists email (
    codigo_email integer generated always as identity,
    codigo_cliente integer not null,
    email varchar(50) not null,
    foreign key (codigo_cliente) references cliente (codigo_cliente) on delete cascade,
    primary key (codigo_email)
);

create table if not exists telefone (
    codigo_tel integer generated always as identity,
    codigo_cliente integer not null,
    ddi varchar(4) not null,
    ddd varchar(5),
    numero varchar(10) unique not null,
    foreign key (codigo_cliente) references cliente (codigo_cliente) on delete cascade,
    primary key (codigo_tel)
);

create table if not exists pedido ( 
    codigo_pedido integer generated always as identity,
    codigo_cliente integer,
    data_pedido date not null, 
    qtd_pedido integer not null,
    foreign key (codigo_cliente) references cliente (codigo_cliente) on delete cascade,
    primary key (codigo_pedido)
);

create table if not exists categoria (
    codigo_categoria integer generated always as identity,
    nome varchar(50) not null,
    primary key (codigo_categoria)
);

create table if not exists funcionario (
    codigo_funcionario integer generated always as identity,
    nome varchar(100) not null,
    sobrenome varchar (100) not null,
    cpf varchar(14) unique not null,
    salario numeric(7, 2) not null check (salario >= 1100),
    primary key (codigo_funcionario)
);

create table if not exists produto (
    codigo_produto integer generated always as identity,
    codigo_funcionario integer not null,
    codigo_categoria integer not null,
    codigo_pedido integer not null,
    nome varchar(50) not null,
    qtd_estoque integer not null check (qtd_estoque >= 0),
    data_fabricacao date not null,
    vl_unitario numeric(9, 2) not null check (vl_unitario >= 0),
    data_cadastro date not null,
    foreign key (codigo_pedido) references pedido (codigo_pedido) on delete cascade,
    foreign key (codigo_categoria) references categoria (codigo_categoria),
    foreign key (codigo_funcionario) references funcionario (codigo_funcionario),
    primary key (codigo_produto)
);
