-- 問題：すべての選手を対象として選手ごとの得点ランキングを表示してください。
-- （SELECT句で副問合せを使うこと）
use worldcup
select
  p.name as 名前,
  p.position as ポジション,
  p.club as 所属クラブ,
  (
    select
      COUNT(id)
    from
      goals as g
    where
      g.player_id = p.id
    -- group by
      -- player_id
  ) as ゴール数
from
  players as p
order by
  ゴール数 desc

-- group byがあると得点を持たない人がNULLになる
-- TODO: 理解
