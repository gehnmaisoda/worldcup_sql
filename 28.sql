use worldcup;

select
  *
from
  players as p
where
  TIMESTAMPDIFF(YEAR, p.birth, '2016-01-13') >= 40;
