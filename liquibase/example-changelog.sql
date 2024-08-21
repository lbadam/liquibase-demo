-- liquibase formatted sql

--changeset adammurray:1724272597268-1
--preconditions onFail:MARK_RAN onError:MARK_RAN
--precondition-table-exists table:liquibasetest
--comment: /* create liquibasetest */
CREATE TABLE "liquibasetest" ("fullName" VARCHAR(255), "isUser" VARCHAR(255), "rating" VARCHAR(255));

--changeset adammurray:2
--comment: /* add city column */
ALTER TABLE IF EXISTS liquibasetest
    ADD COLUMN city character varying(255)[];