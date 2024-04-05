-- -------------------------------------------------------------
-- TablePlus 5.9.2(542)
--
-- https://tableplus.com/
--
-- Database: citizenportal
-- Generation Time: 2024-04-05 18:32:22.1810
-- -------------------------------------------------------------


-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS comment_id_seq;

-- Table Definition
CREATE TABLE "public"."comment" (
    "id" int8 NOT NULL DEFAULT nextval('comment_id_seq'::regclass),
    "content" varchar NOT NULL,
    "relation_type" varchar NOT NULL DEFAULT 'post'::character varying,
    "relation_id" int8 NOT NULL,
    "timestamp" varchar NOT NULL,
    "user_id" int8 NOT NULL,
    "upvote" jsonb NOT NULL DEFAULT '[]'::jsonb,
    "downvote" jsonb NOT NULL DEFAULT '[]'::jsonb,
    PRIMARY KEY ("id")
);

