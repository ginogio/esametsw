DROP DATABASE IF EXISTS shopbd;
CREATE DATABASE shopbd;
USE shopbd;

DROP TABLE IF EXISTS utente;

CREATE TABLE utente (	
  code int primary key AUTO_INCREMENT,
  name char(25) not null,
  cognome char(30),
  email char(45),
  indirizzo char (50),
  datan char (40),
  citta char (30),
  utente char(25),
  password char (25)
);

DROP TABLE IF EXISTS admins;

CREATE TABLE admins (
   code int primary key AUTO_INCREMENT,
   name char(25) not null,
   cognome char(30),
   email char(45),
   utente char(25),
   password char (25)
  );
  
DROP TABLE IF EXISTS product;

CREATE TABLE product (	
  code int primary key AUTO_INCREMENT,
  name char(25) not null,
  description char(250),
  tipo char(25) not null,
  price int default 0,
  quantity int default 0,
  anno int default 0,
  regione char(25),
  foto mediumblob
);

DROP TABLE IF EXISTS carrello;

CREATE TABLE carrello (
 code int primary key AUTO_INCREMENT,
 quantita int default 0,
 id_utente int,
 foreign key(id_utente) REFERENCES utente(code)
 );
 
 DROP TABLE IF EXISTS prodacq;
 
 CREATE TABLE prodacq(
  code int primary key AUTO_INCREMENT,
  id_utente int,
  id_product int,
  name char(20) not null,
  description char(100),
  tipo char(25) not null,
  price int default 0,
  quantity int default 0,
  anno int default 0,
  regione char(25),
  foto mediumblob,
  foreign key(id_utente)references UTENTE(code),
  foreign key(id_product)references PRODUCT(code)
  );
  
  DROP TABLE IF EXISTS recensioni;
  
  CREATE TABLE recensioni(
  code int primary key AUTO_INCREMENT,
  id_utente int,
  id_product int,
  nomeut char(25),
  titolo char(20) not null,
  description char(250),
  stelle int default 0,
  foreign key(id_utente)references UTENTE(code),
  foreign key(id_product)references PRODUCT(code)
  );
  


