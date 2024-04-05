-- -------------------------------------------------------------
-- TablePlus 5.9.2(542)
--
-- https://tableplus.com/
--
-- Database: citizenportal
-- Generation Time: 2024-04-05 18:23:45.9270
-- -------------------------------------------------------------


-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS citizen_id_seq;

-- Table Definition
CREATE TABLE "public"."citizen" (
    "citizen_id" int8 NOT NULL DEFAULT nextval('citizen_id_seq'::regclass),
    "first_name" varchar,
    "last_name" varchar,
    "dob" timestamp,
    "city" varchar,
    "passport_number" varchar NOT NULL,
    "phone" varchar,
    "email" varchar,
    "password" varchar,
    "role" varchar,
    "create_dt" timestamp NOT NULL DEFAULT now(),
    PRIMARY KEY ("citizen_id")
);

