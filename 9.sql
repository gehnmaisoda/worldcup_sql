-- 問題：ワールドカップ開催当時（2014-06-13）の年齢をプレイヤー毎に表示する。
use worldcup
select
  p.birth,
  TIMESTAMPDIFF(YEAR, birth, '2014-06-13') as age,
  p.name,
  p.position
from
  players as p
order by
  age desc
