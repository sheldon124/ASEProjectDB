-- -------------------------------------------------------------
-- TablePlus 5.9.2(542)
--
-- https://tableplus.com/
--
-- Database: citizenportal
-- Generation Time: 2024-04-05 18:33:27.7220
-- -------------------------------------------------------------


-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS party_id_seq;

-- Table Definition
CREATE TABLE "public"."party" (
    "id" int4 NOT NULL DEFAULT nextval('party_id_seq'::regclass),
    "name" varchar NOT NULL,
    "vote" jsonb NOT NULL DEFAULT '[]'::jsonb,
    "interest" jsonb NOT NULL DEFAULT '[]'::jsonb,
    "imageURL" varchar,
    PRIMARY KEY ("id")
);

