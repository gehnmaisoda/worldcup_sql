-- 問題：キックオフ日時と対戦国の国名をキックオフ日時の早いものから順に表示してください。
select
  pairings.kickoff as キックオフ日時,
  (
    select
      c.name
    from
      countries as c
    where
      c.id = pairings.my_country_id
  ) as 国名1,
  (
    select
      c.name
    from
      countries as c
    where
      c.id = pairings.enemy_country_id
  ) as 国名1
from
  pairings
order by
  kickoff ASC
