-- 問題：オウンゴールの回数を表示する
use worldcup;

select
  COUNT(g.id) as オウンゴール数
from
  goals as g
where
  g.player_id is NULL;

-- ポイント: nullの値を検索する場合は=ではなくIS演算子
