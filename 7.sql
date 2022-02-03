-- 問題：すべての選手を対象として選手ごとの得点ランキングを表示してください。
-- （テーブル結合を使うこと）
use worldcup
select
  p.name as 名前,
  p.position as ポジション,
  p.club as 所属クラブ,
  COUNT(g.id) as ゴール数
from
  players as p
  left join goals as g on g.player_id = p.id
group by
  p.id, p.name, p.position, p.club
order by
  ゴール数 desc

-- なるほど↓
-- またグループ化を行うのでGROUP BY句をしますが、グループ関数を使っている場合には、
-- SELECT句に書いているカラムはすべてGROUP BY句に記述しなければいけないとう
-- ルールがありますので注意してください。
