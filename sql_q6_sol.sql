SELECT COUNT(DISTINCT match_no) no_of_matches_won
FROM euro_cup_2016.match_details
WHERE win_lose != 'L'
  AND goal_score = 1;