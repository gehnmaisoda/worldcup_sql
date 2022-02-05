-- 問題：グループCの各対戦毎にゴール数を表示してください。
-- ゴール数がゼロの場合も表示してください。問15の副問合せを用いたSQLにカラムを付けくわえる形で作成してください。
-- # TODO: (maeda)分からん
select
  *
from
  goals as g
  left join players as p on p.id = g.pairing_id

