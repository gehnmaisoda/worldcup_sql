-- 問題：各ポジションごとの総得点を表示してください。
use worldcup

select p.position as ポジション, COUNT(g.id) as ゴール数
from
  players as p
left join goals as g on g.player_id = p.id
group by
  p.position
order by
  ゴール数 desc
