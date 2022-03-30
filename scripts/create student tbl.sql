USE college;

CREATE TABLE student
  (
     studentid NUMERIC NOT NULL,
     fname     VARCHAR (15) NOT NULL,
     surname   VARCHAR (15) NOT NULL,
     address1  VARCHAR (30) NOT NULL,
     towncity  VARCHAR (30) NOT NULL,
     postcode  VARCHAR (8) NOT NULL,
     primary key (studentid)
  ); 