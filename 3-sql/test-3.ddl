-- Generado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   en:        2020-05-10 00:16:07 CLT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE alternativa (
    id_alternativa  INTEGER NOT NULL,
    descripción     VARCHAR2(50 CHAR) NOT NULL
);

ALTER TABLE alternativa ADD CONSTRAINT alternativa_pk PRIMARY KEY ( id_alternativa );

CREATE TABLE alumno (
    id_alumno       INTEGER NOT NULL,
    nombre          VARCHAR2(15 CHAR) NOT NULL,
    apellido        VARCHAR2(15 CHAR) NOT NULL,
    curso_id_curso  INTEGER NOT NULL
);

ALTER TABLE alumno ADD CONSTRAINT alumno_pk PRIMARY KEY ( id_alumno );

CREATE TABLE alumno_prueba (
    alumno_id_alumno  INTEGER NOT NULL,
    prueba_id_prueba  INTEGER NOT NULL,
    puntaje_prueba    INTEGER NOT NULL
);

ALTER TABLE alumno_prueba ADD CONSTRAINT alumno_prueba_pk PRIMARY KEY ( alumno_id_alumno,
                                                                        prueba_id_prueba );

CREATE TABLE curso (
    id_curso INTEGER NOT NULL
);

ALTER TABLE curso ADD CONSTRAINT curso_pk PRIMARY KEY ( id_curso );

CREATE TABLE pregunta (
    id_pregunta       INTEGER NOT NULL,
    enunciado         VARCHAR2(100 CHAR) NOT NULL,
    prueba_id_prueba  INTEGER NOT NULL,
    puntaje_pregunta  INTEGER NOT NULL,
    número_pregunta   INTEGER NOT NULL
);

ALTER TABLE pregunta ADD CONSTRAINT pregunta_pk PRIMARY KEY ( id_pregunta );

CREATE TABLE pregunta_alternativa (
    pregunta_id_pregunta        INTEGER NOT NULL,
    alternativa_id_alternativa  INTEGER NOT NULL,
    valor_lógico                CHAR(1) NOT NULL,
    porcentaje_alternativa      NUMBER(14, 2) NOT NULL,
    número_alternativa          INTEGER NOT NULL
);

ALTER TABLE pregunta_alternativa ADD CONSTRAINT pregunta_alternativa_pk PRIMARY KEY ( pregunta_id_pregunta,
                                                                                      alternativa_id_alternativa );

CREATE TABLE prueba (
    id_prueba       INTEGER NOT NULL,
    nombre          VARCHAR2(15 CHAR) NOT NULL,
    descripción     VARCHAR2(100 CHAR),
    programa        VARCHAR2(20 CHAR) NOT NULL,
    unidad          VARCHAR2(15 CHAR) NOT NULL,
    autor           VARCHAR2(20 CHAR) NOT NULL,
    fecha_creación  DATE NOT NULL
);

ALTER TABLE prueba ADD CONSTRAINT prueba_pk PRIMARY KEY ( id_prueba );

ALTER TABLE alumno
    ADD CONSTRAINT alumno_curso_fk FOREIGN KEY ( curso_id_curso )
        REFERENCES curso ( id_curso );

ALTER TABLE alumno_prueba
    ADD CONSTRAINT alumno_prueba_alumno_fk FOREIGN KEY ( alumno_id_alumno )
        REFERENCES alumno ( id_alumno );

ALTER TABLE alumno_prueba
    ADD CONSTRAINT alumno_prueba_prueba_fk FOREIGN KEY ( prueba_id_prueba )
        REFERENCES prueba ( id_prueba );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE pregunta_alternativa
    ADD CONSTRAINT pregunta_alt_alternativa_fk FOREIGN KEY ( alternativa_id_alternativa )
        REFERENCES alternativa ( id_alternativa );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE pregunta_alternativa
    ADD CONSTRAINT pregunta_alt_pregunta_fk FOREIGN KEY ( pregunta_id_pregunta )
        REFERENCES pregunta ( id_pregunta );

ALTER TABLE pregunta
    ADD CONSTRAINT pregunta_prueba_fk FOREIGN KEY ( prueba_id_prueba )
        REFERENCES prueba ( id_prueba );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             0
-- ALTER TABLE                             13
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   2
-- WARNINGS                                 0
