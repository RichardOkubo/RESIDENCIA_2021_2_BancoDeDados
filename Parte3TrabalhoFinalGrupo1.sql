/* 3. SQL de inserção de dados nas tabelas (pelo menos 10 registros em cada uma) */

insert into acesso (usuario, senha)
values
    ('alexandre', '/e[yfG%v'),
    ('luiza', ',2@g"vXM'),
    ('kevin', 'Jh$FAJ'),
    ('joao','4hj_?ZyH'),
    ('luiz', 'ne),QJBY'),
    ('catarina','(Q.bAb]>'),
    ('caio', '/A\}$e7t'),
    ('isabel', '6d>h>@p#'),
    ('lavinia', 'W$9J2n5&'),
    ('murilo','$tm\nK5p');

insert into endereco (pais, uf, cidade, bairro, logradouro, localidade, num_end, complemento, cep)
values
    ('Brasil', 'RJ', 'Petrópolis', 'Correas', 'Rua', 'Canela', '58', 'Casa 2', '25600-000'),
    ('Brasil', 'RJ', 'Teresópolis', 'Agrões', 'Rua', 'Sabiá', '31', null, '85700-099'),
    ('Brasil', 'RJ', 'Duque de Caxias', 'Jardim Primavera', 'Vila', 'Peroba', '111', 'Apto 7', '39256-070'),
    ('Brasil', 'RJ', 'Petrópolis', 'Cascatinha', 'Rua', 'Quissamã', '18000', 'Fundos', '99256-660'),
    ('Brasil', 'RJ', 'Guapimirim', 'Centro', 'Vila', 'Sarau', '3333', null, '78950-666'),
    ('Brasil', 'RJ', 'Petrópolis', 'Quitandinha', 'Rua', 'México', '88', 'Fundos', '66652-123'),
    ('Brasil', 'RJ', 'Friburgo', 'Centro', 'Vila', 'Caramujo', '65', 'Casa C', '65782-900'),
    ('Brasil', 'RJ', 'Cabo Frio', 'Angelim', 'Vila', 'Papagaio', '558', 'Casa D', '65871-950'),
    ('Brasil', 'RJ', 'Petrópolis', 'Itaipava', 'Estrada', 'União e Indústria', null, null, '25730-775'),
    ('Brasil', 'SP', 'Osasco', 'Bela Vista', 'Avenida', 'Santo Antônio', '1818', null, '02675-031');

insert into cliente(
    codigo_acesso,
    codigo_end,
    nome,
    sobrenome,
    cpf,
    data_nascimento
) values
    ('1', '1', 'Alexandre','Cardoso', '360.412.589-89', '1966-09-15'),
    ('2', '2', 'Ana Luiza','Campos', '950.164.723-43', '1977-05-01'),
    ('3', '3', 'Kevin','da Costa','561.928.743-28', '1970-12-19'),
    ('4', '4', 'João Vitor','Azevedo','034.785.692-65', '1984-09-14'),
    ('5', '5', 'Luiz Gustavo','Sales','054.917.362-52', '1971-08-26'),
    ('6', '6', 'Catarina','Pereira','925.810.436-60', '1990-02-24'),
    ('7', '7', 'Caio','Carvalho','562.934.810-89', '1991-07-09'),
    ('8', '8', 'Isabel','Alves','140.783.259-04', '1972-02-23'),
    ('9', '9', 'Lavínia','Nogueira', '903.814.562-42', '2000-09-01'),
    ('10','10', 'Murilo','Teixeira', '290.631.748-96', '1992-04-04');

insert into email (codigo_cliente, email)
values
    ('1', 'alexandrecardoso@gmail.com'),
    ('2', 'analuizacamposcunha.br'),
    ('3', 'kevin@uol.com.br'),
    ('4', 'jvazevedo@aragao.br'),
    ('5','lgsales@da.br' ),
    ('6', 'catapera@hotmail.com' ),
    ('7', 'cacarvalho@bol.com.br'),
    ('8', 'isalves@barbosa.br'),
    ('9', 'lavino@silva.com'),
    ('10', 'murilo89@teixeira.org');

insert into telefone (codigo_cliente, ddi, ddd, numero)
values
    ('1', '+55', '(97)' ,'98826-6301'),
    ('2', '+55', '(19)' ,'99939-9289'),
    ('3', '+55', '(41)' ,'99995-3028'),
    ('4', '+55', '(91)' ,'91907-9409'),
    ('5', '+55', '(62)' ,'98190-4738'),
    ('6', '+55', '(62)' ,'91906-8795'),
    ('7', '+55', '(50)' ,'99901-1045'),
    ('8', '+55', '(41)' ,'99288-8226'),
    ('9', '+55', '(24)' ,'2285-0029'),
    ('10', '+55', '(21)' ,'98858-3951');

insert into pedido (codigo_cliente, data_pedido, qtd_pedido)
values
    ('1', '2019-07-19', '4'),
    ('2', '2021-08-17', '2'),
    ('3', '2021-08-08', '4'),
    ('4', '2019-05-14', '1'),
    ('5', '2019-11-18', '3'),
    ('6', '2019-05-23', '2'),
    ('7', '2021-09-03', '1'),
    ('8', '2019-01-31', '3'),
    ('9', '2019-09-06', '4'),
    ('10', '2018-11-26','4');
    
insert into categoria (nome)
values
    ('vestuário'),
    ('elétrica'),
    ('eletrônicos'),
    ('brinquedos '),
    ('cama, mesa e banho'),
    ('móveis'),
    ('construção'),
    ('esportes '),
    ('estética'),
    ('papelaria');

insert into funcionario(nome, sobrenome, cpf, salario)
values
    ('Marcelo', 'Machado Collares', '235.108.769-03', '25687.99'),
    ('Rixárdson', 'Al Kubo', '204.798.356-83', '2500.00'),
    ('Thalita','Ferreira' , '590.182.736-86', '2300.00'),
    ('Viniçu', 'Çen Medu', '960.814.523-60', '2400.00'),
    ('Viquitória', 'Viquitorina', '986.130.542-42', '2500.00'),
    ('Eduvison', 'Duduson', '531.298.046-33', '1100.00'),
    ('Ednaldo', 'Pereira', '284.170.356-80', '2800.00'), 
    ('Thibúrcio', 'Pinto', '128.039.764-04', '2600.00'),
    ('Mirosmar', 'Peixoto', '349.751.820-41', '1900.00'),
    ('Durval', 'Viana', '024.768.513-53', '2400.00');

insert into produto ( 
    codigo_funcionario,
    codigo_categoria, 
    codigo_pedido, 
    nome, 
    qtd_estoque,
    data_fabricacao,
    vl_unitario,
    data_cadastro
) values
        ('1', '1', '1', 'camisa ', '20', '2018-01-13', '30.00', '2018-09-11'),
        ('2', '2', '2', 'tomada ', '50', '2019-05-02', '18.00', '2019-08-02'),
        ('3', '3', '3', 'televisão', '11', '2020-08-29', '1400.00', '2020-12-01'),
        ('4', '4', '4', 'batman (action figure)', '2', '2017-07-07', '80.00', '2017-09-12'),
        ('5', '5', '5', 'toalha ', '30', '2019-02-03', '18.50', '2019-07-04'),
        ('6', '6', '6', 'sofá ', '32', '2018-05-20', '899.00', '2018-09-09'),
        ('7', '7', '7', 'caixa de ferramentas ', '50', '2019-04-04', '160.00', '2019-11-04'),
        ('8', '8', '8', 'chuteira ', '17', '2018-01-30', '180.00', '2018-11-04'),
        ('9', '9', '9', 'perfume ', '5', '2017-08-10', '125.00', '2017-12-02'),
        ('10','10','10', 'livro', '26', '2016-11-02', '38.00', '2016-11-05');