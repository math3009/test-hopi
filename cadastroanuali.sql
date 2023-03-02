create table if not exists usuario (
	id int not null auto_increment,
    nome varchar(100) not null,
    rg varchar(12) not null,
    email varchar(100) not null,
    telefone varchar(15),
    cidade varchar(45),
    data_inicial date not null,
    data_final date not null,
    PRIMARY KEY (id)
) auto_increment = 1 ;

insert into usuario (nome, rg, email, telefone, cidade, data_inicial, data_final) values (
"Matheus", "399640526", "matheus@gmail.com", "11931474526", "Jundiai", '2023-02-04', '2024-02-04'
); 

select * from usuario;

