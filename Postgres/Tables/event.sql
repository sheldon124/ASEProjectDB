-- -------------------------------------------------------------
-- TablePlus 5.9.2(542)
--
-- https://tableplus.com/
--
-- Database: citizenportal
-- Generation Time: 2024-04-05 18:32:41.1440
-- -------------------------------------------------------------


-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS event_id_seq;

-- Table Definition
CREATE TABLE "public"."event" (
    "id" int4 NOT NULL DEFAULT nextval('event_id_seq'::regclass),
    "eventStart" varchar,
    "eventName" varchar,
    "location" varchar,
    "eventEnd" varchar,
    "price" float8,
    "description" varchar,
    "imageURL" varchar,
    "capacity" int8,
    "organizer" varchar,
    "isIdentityMandatory" bool NOT NULL DEFAULT true,
    "registeredIds" jsonb NOT NULL DEFAULT '[]'::jsonb,
    "createdBy" int8 NOT NULL,
    PRIMARY KEY ("id")
);

