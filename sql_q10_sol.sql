SELECT pm.player_id
     , pm.team_id
     , pm.jersey_no
     , pm.player_name
     , pm.posi_to_play
     , pm.dt_of_bir
     , pm.age
     , pm.playing_club
FROM euro_cup_2016.player_mast pm
JOIN euro_cup_2016.soccer_country sc ON pm.team_id = sc.country_id
WHERE sc.country_name = 'England'
  AND pm.playing_club = 'Liverpool'