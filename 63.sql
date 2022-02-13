use worldcup;

select
  kickoff,
  (
    select
      c1.name
    from
      countries as c1
    where
      p.my_country_id = c1.id
  ) as 国1,
  (
    select
      c2.name
    from
      countries as c2
    where
      p.enemy_country_id = c2.id
  ) as 国2
from
  pairings as p

-- 言わずもがな、ダブルinner joinでも解けるよ
