-- 問題：キックオフ日時と対戦国の国名をキックオフ日時の早いものから順に表示してください。
select
  p.kickoff as キックオフ日時,
  c1.name as 国名1,
  c2.name as 国名2,
from
  pairings as p
  left join countries as c1 ON p.my_country_id = c1.id
  left join countries as c2 ON p.my_country_id = c2.id
order by
  kickoff ASC
