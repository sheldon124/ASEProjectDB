-- -------------------------------------------------------------
-- TablePlus 5.9.2(542)
--
-- https://tableplus.com/
--
-- Database: citizenportal
-- Generation Time: 2024-04-05 18:35:24.7070
-- -------------------------------------------------------------
CREATE OR REPLACE FUNCTION public.vote_for_party(vote_party_id integer, unvote_party_id integer, person_id integer)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
BEGIN
    -- First, unvote for the previous party
    UPDATE "party"
SET "vote" = COALESCE(
    (
        SELECT jsonb_agg(elem)
        FROM (
            SELECT jsonb_array_elements("vote") AS elem
            FROM "party"
            WHERE id = unvote_party_id
        ) AS subquery
        WHERE elem::int <> person_id
    ),
    '[]'
)
WHERE id = unvote_party_id;

    -- Then, vote for the new party
    UPDATE "party"
SET "vote" = "vote" || jsonb_build_array(person_id)
WHERE id = vote_party_id;
END;
$function$

