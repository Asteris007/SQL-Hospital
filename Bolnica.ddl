-- Generated by Oracle SQL Developer Data Modeler 18.2.0.179.0756
--   at:        2020-11-13 02:57:54 EET
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



CREATE TABLE doctor (
    doctor_id           INTEGER NOT NULL,
    doctor_speciality   VARCHAR2(15),
    doctor_name         VARCHAR2(30) NOT NULL,
    doctor_phone        VARCHAR2(10)
);

ALTER TABLE doctor ADD CONSTRAINT doctor_pk PRIMARY KEY ( doctor_id );

CREATE TABLE patient (
    patient_id        INTEGER NOT NULL,
    patient_name      VARCHAR2(20),
    patient_address   VARCHAR2(30),
    patient_phone     VARCHAR2(10)
);

ALTER TABLE patient ADD CONSTRAINT patient_pk PRIMARY KEY ( patient_id );

CREATE TABLE treatment (
    treatment_id         INTEGER NOT NULL,
    treatment_date       DATE,
    treatment_duration   NUMBER,
    treatment_diagnose   VARCHAR2(20),
    patient_patient_id   INTEGER NOT NULL,
    doctor_doctor_id     INTEGER NOT NULL
);

ALTER TABLE treatment ADD CONSTRAINT treatment_pk PRIMARY KEY ( treatment_id );

ALTER TABLE treatment
    ADD CONSTRAINT treatment_doctor_fk FOREIGN KEY ( doctor_doctor_id )
        REFERENCES doctor ( doctor_id );

ALTER TABLE treatment
    ADD CONSTRAINT treatment_patient_fk FOREIGN KEY ( patient_patient_id )
        REFERENCES patient ( patient_id );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             3
-- CREATE INDEX                             0
-- ALTER TABLE                              5
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
-- ERRORS                                   0
-- WARNINGS                                 0
