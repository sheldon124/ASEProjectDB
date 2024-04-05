-- -------------------------------------------------------------
-- TablePlus 5.9.2(542)
--
-- https://tableplus.com/
--
-- Database: citizenportal
-- Generation Time: 2024-04-05 18:33:39.0650
-- -------------------------------------------------------------


-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS project_id_seq;

-- Table Definition
CREATE TABLE "public"."project" (
    "project_id" int8 NOT NULL DEFAULT nextval('project_id_seq'::regclass),
    "name" varchar,
    "department" varchar,
    "city" varchar,
    "duration" varchar,
    "budget" float8,
    "start_dt" timestamp,
    "description" varchar,
    "create_dt" timestamp NOT NULL DEFAULT now(),
    "opinions" jsonb NOT NULL DEFAULT '[]'::jsonb,
    "status" int8 NOT NULL DEFAULT 1,
    "upvote" jsonb NOT NULL DEFAULT '[]'::jsonb,
    "downvote" jsonb NOT NULL DEFAULT '[]'::jsonb,
    PRIMARY KEY ("project_id")
);

