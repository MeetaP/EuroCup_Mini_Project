SELECT t1.match_no
     , t1.country_name
FROM (SELECT md.match_no
     , sc.country_name
     , SUM(md.penalty_score) OVER(PARTITION BY md.match_no) AS num_penalty_shootouts
FROM euro_cup_2016.match_details md
JOIN euro_cup_2016.soccer_country sc ON sc.country_id = md.team_id
WHERE md.decided_by = 'P'
ORDER BY num_penalty_shootouts DESC) t1
LIMIT 2;

