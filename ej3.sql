DROP DATABASE IF EXISTS tienda_informatica;
CREATE DATABASE tienda_informatica;
USE tienda_informatica;

CREATE TABLE fabricantes(codigo_fabricante INT AUTO_INCREMENT PRIMARY KEY,
nombre NVARCHAR(100)
);

CREATE TABLE articulos(codigo_articulo INT AUTO_INCREMENT PRIMARY KEY,
nombre NVARCHAR(100),
precio INT DEFAULT 100,
codigo_fabricante INT,
KEY (codigo_fabricante),
FOREIGN KEY (codigo_fabricante) REFERENCES fabricantes(codigo_fabricante)
ON UPDATE CASCADE ON DELETE CASCADE
);

SHOW COLUMNS FROM fabricantes;
SHOW COLUMNS FROM articulos;