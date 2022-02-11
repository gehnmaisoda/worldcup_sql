use worldcup;

select IFNULL(player_id, 9999), goal_time
from goals;

-- CASE, IF, IFNULL などで置き換えられる
