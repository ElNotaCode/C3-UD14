DROP DATABASE IF EXISTS empleados;
CREATE DATABASE empleados;
USE empleados;

CREATE TABLE departamentos(codigo INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(60),
presupuesto INT DEFAULT 0
);

CREATE TABLE empleados(dni VARCHARACTER(8) NOT NULL PRIMARY KEY,
nombre NVARCHAR(100),
apellidos NVARCHAR(255),
departamento INT NOT NULL,
KEY (departamento),
FOREIGN KEY (departamento) REFERENCES departamentos(codigo)
ON UPDATE CASCADE ON DELETE CASCADE
);

SHOW COLUMNS FROM departamentos;
SHOW COLUMNS FROM empleados;