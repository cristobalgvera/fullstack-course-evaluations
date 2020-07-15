SELECT *
FROM PRUEBA;
SELECT *
FROM ALTERNATIVA;
SELECT *
FROM PREGUNTA;
SELECT *
FROM pregunta_alternativa;
SELECT *
FROM CURSO;
SELECT *
FROM ALUMNO;
SELECT *
FROM alumno_prueba;

INSERT INTO prueba (id_prueba, nombre, programa, unidad, autor, fecha_creación)
VALUES (1, 'Matemáticas', 'Ciencias', 'Álgebra', 'René Castillo', TO_DATE('03/02/2020', 'DD/MM/YYYY'));
INSERT INTO prueba (id_prueba, nombre, programa, unidad, autor, fecha_creación)
VALUES (2, 'Física', 'Ciencias', 'Mecánica', 'Leonardo Balart', TO_DATE('17/03/2020', 'DD/MM/YYYY'));
INSERT INTO prueba (id_prueba, nombre, programa, unidad, autor, fecha_creación)
VALUES (3, 'Química', 'Ciencias', 'Moléculas', 'Juan Cornejo', TO_DATE('18/05/2020', 'DD/MM/YYYY'));

-- Preguntas prueba de matemáticas

INSERT INTO PREGUNTA (id_pregunta, enunciado, prueba_id_prueba, puntaje_pregunta, número_pregunta)
VALUES (1, '3X + 2 = -1', 1, 3, 1);
INSERT INTO PREGUNTA (id_pregunta, enunciado, prueba_id_prueba, puntaje_pregunta, número_pregunta)
VALUES (2, '3X + 2 = -4', 1, 3, 2);
INSERT INTO PREGUNTA (id_pregunta, enunciado, prueba_id_prueba, puntaje_pregunta, número_pregunta)
VALUES (3, '3X + 2 = -7', 1, 3, 3);
INSERT INTO PREGUNTA (id_pregunta, enunciado, prueba_id_prueba, puntaje_pregunta, número_pregunta)
VALUES (4, 'X^2 = 9', 1, 6, 4);
INSERT INTO PREGUNTA (id_pregunta, enunciado, prueba_id_prueba, puntaje_pregunta, número_pregunta)
VALUES (5, '¿Qué representa la X en una ecuación?', 1, 3, 5);
INSERT INTO PREGUNTA (id_pregunta, enunciado, prueba_id_prueba, puntaje_pregunta, número_pregunta)
VALUES (6, '¿A qué es igual una diferencia de cuadrados?', 1, 6, 6);
INSERT INTO PREGUNTA (id_pregunta, enunciado, prueba_id_prueba, puntaje_pregunta, número_pregunta)
VALUES (7, 'Yo tengo dos veces la edad de mi hermana y la suma de nuestras edades es 27, ¿qué edad tiene ella?', 1, 9,
        7);
INSERT INTO PREGUNTA (id_pregunta, enunciado, prueba_id_prueba, puntaje_pregunta, número_pregunta)
VALUES (8, '¿A qué es igual la siguiente expresión?: X^2 - 1', 1, 6, 8);
INSERT INTO PREGUNTA (id_pregunta, enunciado, prueba_id_prueba, puntaje_pregunta, número_pregunta)
VALUES (9, '13X + 4X^2 = 17', 1, 9, 9);
INSERT INTO PREGUNTA (id_pregunta, enunciado, prueba_id_prueba, puntaje_pregunta, número_pregunta)
VALUES (10, '3X + 2 = 0', 1, 3, 10);

-- Preguntas prueba de física

INSERT INTO PREGUNTA (id_pregunta, enunciado, prueba_id_prueba, puntaje_pregunta, número_pregunta)
VALUES (11, '1 + 1', 2, 2, 1);
INSERT INTO PREGUNTA (id_pregunta, enunciado, prueba_id_prueba, puntaje_pregunta, número_pregunta)
VALUES (12, '1 + 2', 2, 3, 2);
INSERT INTO PREGUNTA (id_pregunta, enunciado, prueba_id_prueba, puntaje_pregunta, número_pregunta)
VALUES (13, 'OX XO OX XO ...', 2, 5, 3);
INSERT INTO PREGUNTA (id_pregunta, enunciado, prueba_id_prueba, puntaje_pregunta, número_pregunta)
VALUES (14, 'PO POO POOO ...', 2, 5, 4);
INSERT INTO PREGUNTA (id_pregunta, enunciado, prueba_id_prueba, puntaje_pregunta, número_pregunta)
VALUES (15, '¿Cuál es la unidad de medida para la distancia en Chile?', 2, 7, 5);
INSERT INTO PREGUNTA (id_pregunta, enunciado, prueba_id_prueba, puntaje_pregunta, número_pregunta)
VALUES (16, '¿Cuál de las siguientes es una cara?', 2, 3, 6);
INSERT INTO PREGUNTA (id_pregunta, enunciado, prueba_id_prueba, puntaje_pregunta, número_pregunta)
VALUES (17, 'Selecciona un gato y un perro', 2, 8, 7);
INSERT INTO PREGUNTA (id_pregunta, enunciado, prueba_id_prueba, puntaje_pregunta, número_pregunta)
VALUES (18, 'Selecciona un camello y una serpiente', 2, 6, 8);
INSERT INTO PREGUNTA (id_pregunta, enunciado, prueba_id_prueba, puntaje_pregunta, número_pregunta)
VALUES (19, '¿La luz puede ir más rápido?', 2, 9, 9);
INSERT INTO PREGUNTA (id_pregunta, enunciado, prueba_id_prueba, puntaje_pregunta, número_pregunta)
VALUES (20, '¿Que pesa más: un kilo de plumas o un kilo de plomo?', 2, 9, 10);

-- Alternativas prueba de matemáticas

INSERT INTO alternativa (id_alternativa, descripción)
VALUES (1, '-1');
INSERT INTO alternativa (id_alternativa, descripción)
VALUES (2, '-2');
INSERT INTO alternativa (id_alternativa, descripción)
VALUES (3, '-3');
INSERT INTO alternativa (id_alternativa, descripción)
VALUES (4, '3');
INSERT INTO alternativa (id_alternativa, descripción)
VALUES (5, 'Incógnita');
INSERT INTO alternativa (id_alternativa, descripción)
VALUES (6, '(X + A) (X - A)');
INSERT INTO alternativa (id_alternativa, descripción)
VALUES (7, '9');
INSERT INTO alternativa (id_alternativa, descripción)
VALUES (8, '(X + 1) (X - 1)');
INSERT INTO alternativa (id_alternativa, descripción)
VALUES (9, '1');
INSERT INTO alternativa (id_alternativa, descripción)
VALUES (10, '-2/3');

-- Alternativas prueba de física

INSERT INTO alternativa (id_alternativa, descripción)
VALUES (11, '2');
INSERT INTO alternativa (id_alternativa, descripción)
VALUES (12, '3');
INSERT INTO alternativa (id_alternativa, descripción)
VALUES (13, 'OX');
INSERT INTO alternativa (id_alternativa, descripción)
VALUES (14, 'POOOO');
INSERT INTO alternativa (id_alternativa, descripción)
VALUES (15, 'Metros');
INSERT INTO alternativa (id_alternativa, descripción)
VALUES (16, ':)');
INSERT INTO alternativa (id_alternativa, descripción)
VALUES (17, 'Perro');
INSERT INTO alternativa (id_alternativa, descripción)
VALUES (18, 'Gato');
INSERT INTO alternativa (id_alternativa, descripción)
VALUES (19, 'Camello');
INSERT INTO alternativa (id_alternativa, descripción)
VALUES (20, 'Serpiente');
INSERT INTO alternativa (id_alternativa, descripción)
VALUES (21, 'No');
INSERT INTO alternativa (id_alternativa, descripción)
VALUES (22, 'Pesan lo mismo');

-- Relacionar alternativas con preguntas

---- Matemáticas

INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (1, 1, 1, 100, 1);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (1, 6, 0, 0, 2);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (1, 4, 0, 0, 3);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (1, 10, 0, 0, 4);

INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (2, 2, 1, 100, 3);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (2, 5, 0, 0, 1);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (2, 7, 0, 0, 2);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (2, 8, 0, 0, 4);

INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (3, 3, 1, 100, 4);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (3, 6, 0, 0, 1);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (3, 4, 0, 0, 2);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (3, 10, 0, 0, 3);

INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (4, 4, 1, 100, 1);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (4, 1, 0, 0, 2);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (4, 9, 0, 0, 3);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (4, 7, 0, 0, 4);

INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (5, 5, 1, 100, 2);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (5, 6, 0, 0, 1);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (5, 3, 0, 0, 3);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (5, 2, 0, 0, 4);

INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (6, 6, 1, 100, 1);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (6, 7, 0, 0, 2);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (6, 2, 0, 0, 3);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (6, 3, 0, 0, 4);

INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (7, 4, 0, 0, 1);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (7, 5, 0, 0, 2);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (7, 10, 0, 0, 3);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (7, 7, 1, 100, 4);

INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (8, 8, 1, 100, 3);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (8, 9, 0, 0, 2);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (8, 2, 0, 0, 1);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (8, 4, 0, 0, 4);

INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (9, 9, 1, 100, 1);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (9, 7, 0, 0, 2);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (9, 1, 0, 0, 3);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (9, 2, 0, 0, 4);

INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (10, 10, 1, 100, 3);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (10, 8, 0, 0, 2);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (10, 2, 0, 0, 1);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (10, 5, 0, 0, 4);

---- Física

INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (11, 11, 1, 100, 1);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (11, 14, 0, 0, 2);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (11, 19, 0, 0, 3);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (11, 20, 0, 0, 4);

INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (12, 12, 1, 100, 4);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (12, 21, 0, 0, 2);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (12, 19, 0, 0, 3);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (12, 15, 0, 0, 1);

INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (13, 13, 1, 100, 2);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (13, 11, 0, 0, 1);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (13, 14, 0, 0, 3);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (13, 18, 0, 0, 4);

INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (14, 14, 1, 100, 3);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (14, 11, 0, 0, 2);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (14, 19, 0, 0, 1);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (14, 17, 0, 0, 4);

INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (15, 15, 1, 100, 4);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (15, 12, 0, 0, 2);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (15, 14, 0, 0, 3);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (15, 17, 0, 0, 1);

INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (16, 16, 1, 100, 1);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (16, 11, 0, 0, 2);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (16, 20, 0, 0, 3);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (16, 10, 0, 0, 4);

INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (17, 18, 1, 50, 1);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (17, 15, 0, 0, 2);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (17, 19, 0, 0, 3);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (17, 17, 1, 50, 4);

INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (18, 19, 1, 50, 1);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (18, 20, 1, 50, 2);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (18, 14, 0, 0, 3);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (18, 22, 0, 0, 4);

INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (19, 21, 1, 100, 1);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (19, 11, 0, 0, 2);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (19, 20, 0, 0, 3);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (19, 17, 0, 0, 4);

INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (20, 22, 1, 100, 3);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (20, 15, 0, 0, 2);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (20, 19, 0, 0, 1);
INSERT INTO pregunta_alternativa (pregunta_id_pregunta, alternativa_id_alternativa, valor_lógico,
                                  porcentaje_alternativa, número_alternativa)
VALUES (20, 13, 0, 0, 4);

-- Registro de cursos

INSERT INTO curso (id_curso)
VALUES (1);
INSERT INTO curso (id_curso)
VALUES (2);

-- Registro de alumnos

---- Curso 1

INSERT INTO alumno (id_alumno, nombre, apellido, curso_id_curso)
VALUES (1, 'Cristóbal', 'Gajardo', 1);
INSERT INTO alumno (id_alumno, nombre, apellido, curso_id_curso)
VALUES (2, 'Eduardo', 'Gutiérrez', 1);
INSERT INTO alumno (id_alumno, nombre, apellido, curso_id_curso)
VALUES (3, 'Alejandra', 'Salinas', 1);
INSERT INTO alumno (id_alumno, nombre, apellido, curso_id_curso)
VALUES (4, 'Esteban', 'Contreras', 1);
INSERT INTO alumno (id_alumno, nombre, apellido, curso_id_curso)
VALUES (5, 'Marcela', 'Vera', 1);
INSERT INTO alumno (id_alumno, nombre, apellido, curso_id_curso)
VALUES (6, 'Daniela', 'Corcuera', 1);
INSERT INTO alumno (id_alumno, nombre, apellido, curso_id_curso)
VALUES (7, 'Belinda', 'Vásquez', 1);
INSERT INTO alumno (id_alumno, nombre, apellido, curso_id_curso)
VALUES (8, 'Juan', 'Fernández', 1);
INSERT INTO alumno (id_alumno, nombre, apellido, curso_id_curso)
VALUES (9, 'Francisca', 'Urrutia', 1);
INSERT INTO alumno (id_alumno, nombre, apellido, curso_id_curso)
VALUES (10, 'Horacio', 'López', 1);

---- Curso 2

INSERT INTO alumno (id_alumno, nombre, apellido, curso_id_curso)
VALUES (11, 'Tomás', 'Garrido', 2);
INSERT INTO alumno (id_alumno, nombre, apellido, curso_id_curso)
VALUES (12, 'Paz', 'Hidalgo', 2);
INSERT INTO alumno (id_alumno, nombre, apellido, curso_id_curso)
VALUES (13, 'Pamela', 'Terán', 2);
INSERT INTO alumno (id_alumno, nombre, apellido, curso_id_curso)
VALUES (14, 'Lucas', 'Ruiz', 2);
INSERT INTO alumno (id_alumno, nombre, apellido, curso_id_curso)
VALUES (15, 'Raúl', 'Sánchez', 2);
INSERT INTO alumno (id_alumno, nombre, apellido, curso_id_curso)
VALUES (16, 'Lorena', 'Tiznado', 2);
INSERT INTO alumno (id_alumno, nombre, apellido, curso_id_curso)
VALUES (17, 'Lucas', 'Fierro', 2);
INSERT INTO alumno (id_alumno, nombre, apellido, curso_id_curso)
VALUES (18, 'Nicolás', 'Carreño', 2);
INSERT INTO alumno (id_alumno, nombre, apellido, curso_id_curso)
VALUES (19, 'Fernando', 'Cabrera', 2);
INSERT INTO alumno (id_alumno, nombre, apellido, curso_id_curso)
VALUES (20, 'Osvaldo', 'Saez', 2);

-- Rendir prueba

INSERT INTO alumno_prueba (alumno_id_alumno, prueba_id_prueba, puntaje_prueba)
VALUES (1, 1, 21);
INSERT INTO alumno_prueba (alumno_id_alumno, prueba_id_prueba, puntaje_prueba)
VALUES (4, 1, 21);
INSERT INTO alumno_prueba (alumno_id_alumno, prueba_id_prueba, puntaje_prueba)
VALUES (15, 2, 21);

-- Preguntas

---- 1.-

SELECT a.id_curso AS ID_CURSO, COUNT(c.alumno_id_alumno) AS PRUEBA_RENDIDAS
FROM (curso a LEFT JOIN alumno b
    ON a.id_curso = b.curso_id_curso)
         LEFT JOIN alumno_prueba c
                   ON c.alumno_id_alumno = b.id_alumno
GROUP BY a.id_curso;

---- 2.-

         SELECT a.id_curso AS ID_CURSO_SIN_EVALUACIONES
FROM (alumno_prueba c LEFT JOIN alumno b
    ON c.alumno_id_alumno = b.id_alumno)
    RIGHT JOIN curso a
ON b.curso_id_curso = a.id_curso
WHERE b.curso_id_curso IS NULL
GROUP BY a.id_curso;

---- 3.-

-- a)

SELECT A.id_prueba AS ID_PRUEBA
FROM prueba A
         LEFT JOIN pregunta B
                   ON a.id_prueba = b.prueba_id_prueba
WHERE b.prueba_id_prueba IS NULL;

-- b)

SELECT D.ID_PRUEBA AS ID_PRUEBA, COUNT(a.pregunta_id_pregunta)
FROM ((pregunta_alternativa A LEFT JOIN PREGUNTA B
    ON A.PREGUNTA_ID_PREGUNTA = B.ID_PREGUNTA)
    LEFT JOIN ALTERNATIVA C
    ON a.alternativa_id_alternativa = c.id_alternativa)
         LEFT JOIN PRUEBA D
                   ON d.id_prueba = b.prueba_id_prueba
WHERE a.pregunta_id_pregunta <= 19
GROUP BY d.id_prueba;

-- c)




---- 4.-

SELECT a.id_curso AS ID_CURSO, COUNT(b.id_alumno) AS NÚMERO_ESTUDIANTES
FROM curso A
         INNER JOIN alumno B
                    ON a.id_curso = b.curso_id_curso
GROUP BY a.id_curso;

---- 5.-
---- 6.-
---- 7.-
---- 8.-

