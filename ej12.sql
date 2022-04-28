DROP DATABASE IF EXISTS academia;
CREATE DATABASE academia;
USE academia;

CREATE TABLE profesores(dni NVARCHAR(8) PRIMARY KEY,
nombre VARCHAR(50) UNIQUE,
apellido1 VARCHAR(50),
apellido2 VARCHAR(50),
direccion VARCHAR(100),
titulo VARCHAR(50),
gana DOUBLE NOT NULL
);

CREATE TABLE cursos(id_curso INT AUTO_INCREMENT PRIMARY KEY,
nombre_curso VARCHARACTER(100) UNIQUE,
cod_curso INT,
max_alumnos INT,
fecha_inicio DATE,
fecha_fin DATE,
num_horas INT NOT NULL,
dni_profesor NVARCHAR(8),
KEY (dni_profesor),
FOREIGN KEY (dni_profesor) REFERENCES profesores(dni)
ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE alumnos(dni NVARCHAR(8) PRIMARY KEY,
nombre VARCHAR(50),
apellido1 VARCHAR(50),
apellido2 VARCHAR(50),
direccion VARCHAR(100),
sexo ENUM ('H','M'),
fecha_nacimiento DATE,
curso INT NOT NULL,
KEY (curso),
FOREIGN KEY (curso) REFERENCES cursos(id_curso)
ON UPDATE CASCADE ON DELETE CASCADE
);