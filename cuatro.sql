/*

Desarrollar un algoritmo que permita ingresar la
edad de una persona y que indique la categoría que
pertenece. Arbitrariamente las categorías son: NIÑO
menores a 12 años, JOVEN entre 12 y 18 años,
ADULTO entre 18 y 40 años MAYOR desde 40 hasta
60 años y TERCERA EDAD los mayores a 60.

*/


-- Profesor si lee esto no encontre el metodo de hacer una pregunta al usuario
-- a si que no creo que sea posible a no ser que use ruta de powershell pero
-- necesito hacer los otro 7 ejercicios a si que quedara para luego


-- para crear la tabla
CREATE TABLE "categorias" (
    "nombre" TEXT,
    "edad" INTEGER,
    "categoria" TEXT
);

-- insertar los valores (no encontre la manera de que sea un input)

INSERT INTO categorias (nombre, edad, categoria)
VALUES ('Pepe', 5, NULL);
INSERT INTO categorias (nombre, edad, categoria)
VALUES ('Pablo', 15, NULL);
INSERT INTO categorias (nombre, edad, categoria)
VALUES ('Sofia', 42, NULL);

-- actualizar segun la edad
UPDATE categorias
SET categoria = CASE
    WHEN edad < 12 THEN 'NIÑO'
    WHEN edad BETWEEN 12 AND 18 THEN 'JOVEN'
    WHEN edad BETWEEN 18 AND 40 THEN 'ADULTO' -- metodo entre
    WHEN edad BETWEEN 40 AND 60 THEN 'MAYOR'
    ELSE 'TERCERA EDAD'
END;

-- mostarr en consola
SELECT * FROM categorias;
