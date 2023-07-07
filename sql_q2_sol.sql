SELECT COUNT(DISTINCT match_no) AS num_of_matches
FROM euro_cup_2016.match_details
WHERE decided_by = 'P'
  AND win_lose = 'W';