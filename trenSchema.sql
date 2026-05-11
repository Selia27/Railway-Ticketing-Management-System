create table trTipTren(
    tip varchar2(2) primary key,
    denumire varchar2(20),
    tarifLeiKm float 
);

create table trTren(
    codTr number(4) primary key,
    tip varchar2(2) references trTipTren(tip),
    ora number(4,2),
    orasPL varchar2(20),
    orasSos varchar2(20),
    distKm number
);

create table trBilet(
    nrBilet number(5) primary key,
    codTr number(4) references trTren(codTr),
    clasa number(1),
    cnp varchar2(13),
    nume varchar2(50),
    data date
);

create table trRuta(
    codTr number(4) references trTren(codTr),
    nrOprire number,
    oras varchar2(20),
    ora float,
    constraint pk_ruta primary key (codTr,nrOprire)
);