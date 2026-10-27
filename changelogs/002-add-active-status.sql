--liquibase formatted sql

--changeset dba:002-add-active-status labels:v1.1
--comment: Add account status flag with default value
ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT TRUE NOT NULL;
--rollback ALTER TABLE users DROP COLUMN is_active;
