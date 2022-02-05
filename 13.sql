-- 問題：日本VSコロンビア戦の勝敗を表示して下さい。
-- 日本のゴール数はpairings.id = 39、コロンビアのゴール数はparings.id = 103です。
select
  c.name as 国名,
  count(g.id)
from
  goals as g
  left join pairings as p on g.pairing_id = p.id
  left join countries as c on p.my_country_id = c.id
where
  p.id = 39
  or p.id = 103
group by
  c.name
