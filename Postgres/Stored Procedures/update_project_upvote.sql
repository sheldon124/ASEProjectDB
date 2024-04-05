-- -------------------------------------------------------------
-- TablePlus 5.9.2(542)
--
-- https://tableplus.com/
--
-- Database: citizenportal
-- Generation Time: 2024-04-05 18:35:10.8890
-- -------------------------------------------------------------
CREATE OR REPLACE FUNCTION public.update_project_upvote(project_id_param integer, user_id_param integer)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
BEGIN
    -- First, update the downvote
    UPDATE project
SET downvote = COALESCE(
    (
        SELECT jsonb_agg(elem)
        FROM (
            SELECT jsonb_array_elements(downvote) AS elem
            FROM project
            WHERE project_id = project_id_param
        ) AS subquery
        WHERE elem::int <> user_id_param
    ),
    '[]'
)
WHERE project_id = project_id_param;

    -- Then, update the upvote
    UPDATE project
    SET upvote = upvote || jsonb_build_array(user_id_param)
    WHERE project_id = project_id_param;
END;
$function$


