-- 問題：グループCの各対戦毎にゴール数を表示してください。
-- ゴール数がゼロの場合も表示してください。副問合せは使わずに、外部結合だけを使用して下さい。
select
  p.kickoff,
  c1.name,
  c2.name,
  c1.ranking,
  c2.ranking,
  count(g.id)
from
  pairings as p
  left join countries as c1 on c1.id = p.my_country_id
  left join countries as c2 on c2.id = p.enemy_country_id
  left join goals as g on p.id = g.pairing_id
where
  c1.group_name = 'C' and c2.group_name = 'C'
group by
  p.kickoff,
  c1.name,
  c2.name,
  c1.ranking,
  c2.ranking
order by
  p.kickoff, c1.ranking

-- group byにselectで使用したカラムを全て列挙
-- order byに二つの条件を付与(まず最初のカラムでソートを行い、次に最初のカラムで同じ値だったものだけを対象に2番目のカラムでソートを行います)
