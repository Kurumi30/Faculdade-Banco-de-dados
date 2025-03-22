Create database Restaurante;
Use Restaurante;

CREATE TABLE CLIENTE( Cpf_Cliente int(13) PRIMARY KEY,
  NomeCompleto varchar(40),
  Telefone int(15),
  email varchar(30)

);  

CREATE TABLE MESA( Id_Mesa int(4) PRIMARY KEY,
Capacidade int(2)
);     

CREATE TABLE FUNCIONARIO( Cpf_Funcionario  int(13) PRIMARY KEY,
 NomeCompleto varchar(40),
 Cargo varchar(12)
 );
 
 CREATE TABLE RESERVA( Id_Reserva int auto_increment PRIMARY KEY,
 Status Char(9),
 Cpf_Cliente int (13), 
 Id_Mesa int(4),
 Cpf_Funcionario int(13),
FOREIGN KEY (Cpf_Cliente) REFERENCES CLIENTE(Cpf_Cliente),
CONSTRAINT FOREIGN KEY(Id_Mesa) REFERENCES MESA(Id_Mesa),
CONSTRAINT FOREIGN KEY (Cpf_Funcionario) REFERENCES FUNCIONARIO (Cpf_Funcionario)
 );