DROP DATABASE IF EXISTS almacenes;
CREATE DATABASE almacenes;
USE almacenes;

CREATE TABLE almacenes(codigo INT AUTO_INCREMENT PRIMARY KEY,
lugar NVARCHAR(100),
capacidad INT DEFAULT 0
);

CREATE TABLE cajas(num_referencia CHAR(5) PRIMARY KEY,
contenido NVARCHAR(100),
valor INT DEFAULT 0,
almacen INT, 
KEY (almacen),
FOREIGN KEY (almacen) REFERENCES almacenes(codigo)
ON UPDATE CASCADE ON DELETE CASCADE
);

SHOW COLUMNS FROM almacenes;
SHOW COLUMNS FROM cajas;