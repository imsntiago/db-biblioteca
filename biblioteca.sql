CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE autores(
	autor_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    nacionalidad VARCHAR(50)
);
    
CREATE TABLE libros(
	libro_id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100),
    genero VARCHAR(50),
    autor_id INT,
    ano_publicacion INT,
    
    FOREIGN KEY (autor_id) REFERENCES autores(autor_id)
);

CREATE TABLE prestamos(
	prestamos_id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_prestamo DATE,
    fecha_devolucion DATE,
    nombre_usuario VARCHAR(50),
    libro_id INT,
    
    FOREIGN KEY (libro_id) REFERENCES libros(libro_id)
);

INSERT INTO autores (nombre, apellido, nacionalidad)
VALUES
('Gabriel', 'García Márquez', 'Colombiana'),
('Isabel', 'Allende', 'Chilena'),
('George', 'Orwell', 'Británica');

INSERT INTO libros (titulo, genero, ano_publicacion, autor_id)
VALUES
('Cien años de soledad', 'Realismo mágico', 1967, 1),
('La casa de los espíritus', 'Realismo mágico', 1982, 2),
('1984', 'Distopía', 1949, 3);

INSERT INTO prestamos(fecha_prestamo, fecha_devolucion, nombre_usuario, libro_id)
VALUES
('2026-04-01', '2026-04-10', 'Juan Pérez', 1),
('2026-04-03', '2026-04-12', 'María Gómez', 2),
('2026-04-05', '2026-04-13', 'Carlos Ruiz', 3);

INSERT INTO prestamos(fecha_prestamo, fecha_devolucion, nombre_usuario, libro_id)
VALUES
('2026-04-08', '2026-04-15', 'Ana Torres', 1),
('2026-04-09', NULL, 'Luis Martínez', 2),
('2026-04-10', NULL, 'Sofía Herrera', 3);

SELECT * FROM libros;

SELECT * 
FROM prestamos 
WHERE fecha_devolucion IS NULL;

UPDATE prestamos
SET nombre_usuario = 'Santiago Jaramillo'
WHERE prestamos_id = 5;

SELECT * FROM prestamos;























