-- -------------------------------------------------------------
-- TablePlus 5.9.2(542)
--
-- https://tableplus.com/
--
-- Database: citizenportal
-- Generation Time: 2024-04-05 18:34:42.1410
-- -------------------------------------------------------------
CREATE OR REPLACE FUNCTION public.update_project_downvote(project_id_param integer, user_id_param integer)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
BEGIN
    -- First, update the upvote
    UPDATE project
SET upvote = COALESCE(
    (
        SELECT jsonb_agg(elem)
        FROM (
            SELECT jsonb_array_elements(upvote) AS elem
            FROM project
            WHERE project_id = project_id_param
        ) AS subquery
        WHERE elem::int <> user_id_param
    ),
    '[]'
)
WHERE project_id = project_id_param;

    -- Then, update the downvote
    UPDATE project
    SET downvote = downvote || jsonb_build_array(user_id_param)
    WHERE project_id = project_id_param;
END;
$function$

