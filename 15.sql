-- 問題：グループCの各対戦毎にゴール数を表示してください。
-- ゴール数がゼロの場合も表示してください。自国のゴール数は副問合せを用いて表示してください。
select
  p.kickoff,
  c1.name,
  c2.name,
  c1.ranking,
  c2.ranking,
  (
    select
      count(g.id)
    from
      goals as g
    where
      g.pairing_id = p.id
  ) as 自国ゴール数,
  (
    select
      count(g2.id)
    from
      goals as g2
      left join pairings as p2 on p2.id = g2.pairing_id
      where p2.my_country_id = p1.enemy_country_id and p2.enemy_country_id = p1.my_country_id
    where
      g.pairing_id = p.id
  )
from
  pairings as p
  left join countries as c1 on c1.id = p.my_country_id
  left join countries as c2 on c2.id = p.enemy_country_id
where
  c1.group_name = 'C'
  and c2.group_name = 'C'
order by
  p.kickoff,
  c1.ranking
