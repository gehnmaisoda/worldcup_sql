use worldcup;

select
  c.name as 国名,
  p.name as 名前,
  p.uniform_num
from
  players as p
  inner join countries as c on p.country_id = c.id;

-- from
-- countries as c
-- inner join players as p on p.country_id = c.id;
