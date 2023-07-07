SELECT pm.player_name
FROM euro_cup_2016.player_in_out po
JOIN euro_cup_2016.player_mast pm ON po.player_id = pm.player_id
WHERE po.play_half = 1
  AND po.in_out = 'I'
  AND po.play_schedule = 'NT';