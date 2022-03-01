use worldcup;

select
  *
from
  players
where
  height > 195
union all
select
  *
from
  players
where
  weight > 95
order by name;
