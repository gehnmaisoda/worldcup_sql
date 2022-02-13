use worldcup;

select
  min(ranking)
from
  countries
where
  group_name = 'A';
