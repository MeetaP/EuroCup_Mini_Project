SELECT COUNT(DISTINCT cap.player_captain) AS count_cap_gk
FROM euro_cup_2016.match_captain cap
JOIN euro_cup_2016.player_mast pm ON cap.player_captain = pm.player_id
JOIN euro_cup_2016.playing_position pp ON pp.position_id = pm.posi_to_play
WHERE pp.position_id = 'GK';