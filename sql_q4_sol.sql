SELECT play_schedule
     , COUNT(DISTINCT player_id) as no_of_substitutions
FROM euro_cup_2016.player_in_out
GROUP BY  play_schedule
ORDER BY no_of_substitutions DESC;