-- liquibase formatted sql

-- changeset jhderojas:1
CREATE TABLE Todo (id int IDENTITY(1,1) NOT NULL, name varchar(100) NOT NULL, done NUMBER(1))