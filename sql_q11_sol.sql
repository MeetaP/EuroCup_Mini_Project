SELECT pm.player_name
     , pm.jersey_no
     , pm.playing_club
FROM euro_cup_2016.player_mast pm
JOIN euro_cup_2016.playing_position pp ON pm.posi_to_play = pp.position_id
JOIN euro_cup_2016.soccer_country sc ON pm.team_id = sc.country_id
WHERE pp.position_id = 'GK'
  AND sc.country_name = 'England';