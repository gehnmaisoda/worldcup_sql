-- 各国の平均身長を高い方から順に表示してください。ただし、FROM句はcountriesテーブルとしてください。
use worldcup
select
  AVG(height) as 平均身長,
  AVG(weight) as 平均体重
from
  players
where
  players.position = 'GK'
