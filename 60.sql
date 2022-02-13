use worldcup;

select
  g.goal_time,
  p.uniform_num,
  p.position,
  p.name
from
  goals as g
  left join players as p on p.id = g.player_id;

-- from
--   players as p
--   right join goals as g on p.id = g.player_id;

-- left join するかright joinするかは決めの問題。とはいえ特にright join使うケースってないんじゃ？
