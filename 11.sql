-- 問題：各グループごとの総得点数を表示して下さい。
-- BETWEEN演算子を使用して下さい。
-- グループリーグの対戦は2014-6-13から2014-6-27までに行われていました。
select
  c.group_name as グループ名,
  COUNT(g.id) as 総得点数
from
  goals as g
  left join pairings as p on g.pairing_id = p.id
  left join countries as c on p.my_country_id = c.id
where
  p.kickoff between '2014-6-13 0:00:00'
  and '2014-6-27 23:59:59'
group by
  c.group_name

-- betweenの使い方
-- 境界条件のケア
