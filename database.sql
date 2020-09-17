CREATE TABLE department (
  Id int(11) NOT NULL AUTO_INCREMENT,
  Name varchar(60) DEFAULT NULL,
  PRIMARY KEY (Id)
);

CREATE TABLE seller (
  Id int(11) NOT NULL AUTO_INCREMENT,
  Name varchar(60) NOT NULL,
  Email varchar(100) NOT NULL,
  BirthDate datetime NOT NULL,
  BaseSalary double NOT NULL,
  DepartmentId int(11) NOT NULL,
  PRIMARY KEY (Id),
  FOREIGN KEY (DepartmentId) REFERENCES department (id)
);

INSERT INTO department (Name) VALUES 
  ('Games'),
  ('Esportes'),
  ('Fashion'),
  ('Eletronicos');

INSERT INTO seller (Name, Email, BirthDate, BaseSalary, DepartmentId) VALUES 
  ('Arthur Avila','arthur@gmail.com','1987-04-21 00:00:00',1000,1),
  ('Auriclecio Marques','auriclecios@gmail.com','1979-12-31 00:00:00',3500,2),
  ('Marcelo Soares','marcelo@gmail.com','1988-01-15 00:00:00',2200,1),
  ('Aldrin Sampaio','aldrin@gmail.com','1970-11-30 00:00:00',3000,4),
  ('Julio Jaruzo','julio@gmail.com','1983-01-09 00:00:00',4000,3),
  ('Gilberto Freire','gilberto@gmail.com','1988-03-04 00:00:00',3000,2);

