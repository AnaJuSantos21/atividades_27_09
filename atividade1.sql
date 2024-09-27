create database sistema;
use sistema;

create table cliente(
	cliente_id int auto_increment primary key not null,
    nome varchar(100) not null,
    cpf varchar(25) not null,
    rg varchar(25) not null,
    telefone varchar(40) not null,
    endereco varchar(100) not null
);

create table dependente(
	depen_id int auto_increment primary key not null,
    cliente_id int not null,
    nome varchar(100) not null,
    cpf varchar(25) not null,
    foreign key (cliente_id) references cliente(cliente_id)
);

INSERT INTO cliente(nome,cpf,rg,telefone,endereco)
values ("Amanda","345.476.635.78","755.988.466.X","55 9978-4263","Rua Cristiano Olsen-Jardim Sumaré"),
       ("Marcelo","736.957.985.45","563.857.957.X","55 8734-8364","Praça da República-República"),
       ("Marcelo2","736.957.985.45","563.857.957.X","55 8734-8364","Praça da República-República"),
       ("Marcelo3","736.957.985.45","563.857.957.X","55 8734-8364","Praça da República-República"),
	   ("Luna","725.837.837.95","376.865.976.X","55 9844-7462","Quadra QE 11 Área Especial C-Guará I");



INSERT INTO dependente(nome,cliente_id,cpf)
values ("Carlos",1,"664.827.948.90"),
       ("Lívia",2,"243.834.864.98"),
       ("Pablo",3,"873.298.467.97"),
       ("Carmen",4,"368.865.474.87"),
       ("Lucas",5,"846.657.967.78"),
       ("Cínthia",2,"132.245.198.53"),
       ("Sophia",3,"945.526.763.65"),
       ("Manuela",4,"747.985.857.98");
       
       select * from cliente;
       select * from dependente;
       
       #MUDANDO OS NOMES DOS CLIENTES
       
        update cliente
        set nome = "Alice"
        where cliente_id = 1;
        
        update cliente
        set nome = "Diogo"
        where cliente_id = 2;
        
        update cliente
        set nome = "Samuel"
        where cliente_id = 3;
        
        #MUDANDO OS ENDEREÇOS DOS CLIENTES
        
        update cliente
        set endereco = "Rua Frederico Moura-Cidade Nova"
        where cliente_id = 1;
        
        update cliente
        set endereco = "Avenida Afonso Pena-Boa Viagem"
        where cliente_id = 2;
        
        update cliente
        set endereco = "Rua Tenente-Coronel Cardoso-Centro"
        where cliente_id = 3;
        
        update cliente
        set endereco = "Rua Arlindo Nogueira-Centro"
        where cliente_id = 4;
        
        #EXCLUINDO 3 DEPENDENTES
        
        delete from dependente
        where depen_id = 1;
        
        delete from dependente
        where depen_id = 2;
        
        delete from dependente
        where depen_id = 3;