use worldcup;

select
  g.id,
  g.goal_time,
  p.name
from
  goals as g
  join players as p on p.id = g.player_id;

-- 64のjoin版
-- joinと副問合せどっち使う？？
-- どちらを使用した方がいいかは一概にいうことは難しいですが、
-- 基本的には結合を用いた方がベターではないかと筆者は考えます。副問合せを乱用することでSQLの実行速度が低下してしまうからです。
