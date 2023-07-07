SELECT pm.player_name
     , pm.jersey_no
FROM euro_cup_2016.player_mast pm
JOIN euro_cup_2016.soccer_country sc ON pm.team_id = sc.country_id
JOIN euro_cup_2016.match_details md ON pm.team_id = md.team_id
WHERE sc.country_name = 'Germany'
  AND pm.posi_to_play = 'GK'
  AND md.play_stage = 'G'
GROUP BY pm.player_name
     , pm.jersey_no;