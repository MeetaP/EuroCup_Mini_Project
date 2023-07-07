SELECT sc.country_name
     , COUNT(DISTINCT arm.ass_ref_id) AS count_of_asst_referees
FROM euro_cup_2016.soccer_country sc
JOIN asst_referee_mast arm ON sc.country_id = arm.country_id
GROUP BY sc.country_name
ORDER BY count_of_asst_referees DESC
LIMIT 1;