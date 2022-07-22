create database clinicaMedica;
use clinicaMedica;

-- create medico table -- 
create table medico(
    MEDcodmedico int not null,
    MEDnome varchar(45) not null,
    MEDendereco varchar(25) not null,
    MEDtelefone int not null,

    constraint PK_MEDcodmedico
    primary key (MEDcodmedico)
);

-- create consulta table --
create table paciente(
    PACcodpaciente int not null,
    PACnome varchar(45) not null,
    PACendereco varchar(25) not null,
    PACtelefone int not null,

    constraint PK_PACcodpaciente
    primary key (PACcodpaciente)
);

-- create receita table -- 
create table receita(
    RECcodreceita int not null,
    RECmedicamento varchar(25) not null,

    constraint PK_RECcodreceita
    primary key (RECcodreceita)
);

-- create exames table  -- 
create table exames(
    EXAcodexame int not null,
    EXAnome varchar(20) not null,

    constraint PK_EXAcodexame
    primary key (EXAcodexame)
);

-- create consulta table --
create table consulta(
    CONcodconsulta int not null,
    CONdata date not null,
    CONhora varchar(10) not null,
    CONpatologia varchar(25) not null,
    MEDcodmedico int,
    PACcodpaciente int,
    RECcodreceita int,

    constraint PK_CONcodconsulta
    primary key (CONcodconsulta),

    constraint FK_MEDcodmedico
    foreign key (MEDcodmedico)
    references medico (MEDcodmedico),

    constraint FK_PACcodpaciente
    foreign key (PACcodpaciente)
    references paciente (PACcodpaciente),

    constraint FK_RECcodreceita
    foreign key (RECcodreceita)
    references receita (RECcodreceita)
);

-- create relationship gera table --
create table gera(
    EXAcodexame int,
    CONcodconsulta int,

    constraint FK_EXAcodexame
    foreign key (EXAcodexame)
    references exames (EXAcodexame),

    constraint FK_CONcodconsulta
    foreign key (CONcodconsulta)
    references consulta (CONcodconsulta)
);

