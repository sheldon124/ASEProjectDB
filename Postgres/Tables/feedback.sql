-- -------------------------------------------------------------
-- TablePlus 5.9.2(542)
--
-- https://tableplus.com/
--
-- Database: citizenportal
-- Generation Time: 2024-04-05 18:33:16.2580
-- -------------------------------------------------------------


-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS feedback_id_seq;

-- Table Definition
CREATE TABLE "public"."feedback" (
    "id" int4 NOT NULL DEFAULT nextval('feedback_id_seq'::regclass),
    "description" varchar NOT NULL,
    "userId" int8 NOT NULL,
    "timestamp" varchar NOT NULL,
    PRIMARY KEY ("id")
);

