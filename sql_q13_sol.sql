SELECT pm.player_name
     , COUNT(DISTINCT md.goal_score) AS no_of_goals
FROM euro_cup_2016.match_details md
JOIN euro_cup_2016.soccer_country sc ON md.team_id = sc.country_id
JOIN euro_cup_2016.player_mast pm ON md.team_id = pm.team_id
WHERE pm.posi_to_play = 'DF'
GROUP BY pm.player_name;