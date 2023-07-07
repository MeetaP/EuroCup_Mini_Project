SELECT DISTINCT sv.venue_name

FROM euro_cup_2016.match_mast mm
JOIN euro_cup_2016.soccer_venue sv ON mm.venue_id = sv.venue_id
WHERE mm.decided_by = 'P';