create database cinemadaCidade;
use cinemadaCidade;

create table cinema (
CINcodcinema int not null,
CINnome varchar(45),
CINcapaciade int,
CINendereco varchar(45),
CINcidade varchar(10),

constraint PK_CINcodcinema
primary key (CINcodcinema)
);

create table genero(
GENcodgenero int not null,
GENnome varchar(45),

constraint PK_GENcodgenero
primary key (GENcodgenero)
);

create table filmes(
FILcodfilme int not null,
FILtitulo varchar(15),
FILduracao float(10.10),
FILpaisorigem varchar(15),
GENcodgenero int,

constraint PK_FILcodfilme
primary key (FILcodfilme),

constraint FK_GENcodgenero
foreign key (GENcodgenero)
references genero (GENcodgenero)
);

create table atorDiretor(
ATOcodatordiretor int not null,
ATOnome varchar(45),
ATOnacionalidade varchar(15),
ATOdatanascimento date,

constraint PK_ATOcodatordiretor
primary key (ATOcodatordiretor)
);

create table sessoes(
SEShoraexibicao varchar(8),
SESdataexibicao date,
SEScodexibicao int not null,
CINcodcinema int,
FILcodfilme int,

constraint PK_SEScodexibicao
primary key (SEScodexibicao),

constraint FK_CINcodcinema1
foreign key (CINcodcinema)
references cinema (CINcodcinema),

constraint FK_FILcodfilme1
foreign key (FILcodfilme)
references filmes (FILcodfilme)
);

create table possui(
ATOcodatordiretor int,
FILcodfilme int,

constraint FK_FILcodfilme2
foreign key (FILcodfilme)
references filmes (FILcodfilme),

constraint FK_ATOcodatordiretor
foreign key (ATOcodatordiretor)
references atorDiretor (ATOcodatordiretor)
);