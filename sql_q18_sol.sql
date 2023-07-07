SELECT match_no
     , COUNT(player_id) as no_player_booked
FROM euro_cup_2016.player_booked
WHERE sent_off = 'Y'
GROUP BY match_no
ORDER BY match_no DESC;