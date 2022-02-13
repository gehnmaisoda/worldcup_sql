use worldcup;

select
  sum(ranking)
from
  countries
where
  group_name = 'C';
