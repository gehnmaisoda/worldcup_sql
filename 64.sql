use worldcup;

select
  g.id,
  g.goal_time,
  (
    select
      name
    from
      players as p
    where
      p.id = g.player_id
  ) as 名前
from
  goals as g
where
  player_id is not null;

-- 副問い合わせはselectだけじゃなくてwhere, fromでも使えるよ！
-- selectで実行する副問い合わせは必ず行数が1じゃないとダメだよ(単一行副問い合わせ)
