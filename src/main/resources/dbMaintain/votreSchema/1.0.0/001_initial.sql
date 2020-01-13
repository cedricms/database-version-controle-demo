CREATE SCHEMA dbmaintain_schema;

CREATE TABLE dbmaintain_schema.dbm_user
(
    id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL
)