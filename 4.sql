-- 問題：各国の平均身長を高い方から順に表示してください。
-- ただし、FROM句はplayersテーブルとして、テーブル結合を使わず副問合せを用いてください。
use worldcup
select
  (
    select
      c.name
    from
      countries as c
    where
      p.country_id = c.id
  ) as 国名,
  AVG(p.height) as 平均身長
from
  players as p -- 副問い合わせの使い方
group by
  p.country_id
order by
  AVG(p.height) DESC
