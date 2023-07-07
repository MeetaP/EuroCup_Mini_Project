SELECT rm.referee_name
     , sv.venue_name
     , COUNT(DISTINCT match_no) AS no_of_matches
FROM euro_cup_2016.match_mast mm
JOIN euro_cup_2016.soccer_venue sv ON mm.venue_id = sv.venue_id
JOIN euro_cup_2016.referee_mast rm ON mm.referee_id = rm.referee_id
GROUP BY rm.referee_name
       , sv.venue_name