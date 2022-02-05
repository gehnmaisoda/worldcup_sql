-- 問題：日本VSコロンビア戦（pairings.id = 103）でのコロンビアの得点のゴール時間を表示してください
select
  g.goal_time as ゴール時間
from
  goals as g
where
  g.pairing_id = 103
