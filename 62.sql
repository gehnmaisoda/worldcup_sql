use worldcup;

select
  c.name,
  g.goal_time,
  p.position,
  p.name
from
  goals as g
  left join players as p on p.id = g.player_id
  left join countries as c on c.id = p.country_id;

-- 3つのテーブルをleft join
-- 2つ目のものはinner joinしたらダメだよ。gのplayer_idがNULLの行(それに付随してp.idもNULL)のものにinner joinして消えちゃう
