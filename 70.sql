use worldcup;

select
  count(id)
from
  players
where
  birth between '1980-01-01'and '1980-12-31'
union
select
  count(id)
from
  players
where
  birth between '1981-01-01'and '1981-12-31';
