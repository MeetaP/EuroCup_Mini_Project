SELECT rm.referee_name
     , COUNT(pb.player_id) AS no_of_bookings
FROM euro_cup_2016.match_mast mm
JOIN euro_cup_2016.player_booked pb ON mm.match_no = pb.match_no
JOIN euro_cup_2016.referee_mast rm ON mm.referee_id = rm.referee_id
GROUP BY rm.referee_name
ORDER BY no_of_bookings DESC;