use worldcup;

select
  *
from
  players
where
  height < 165
  or weight < 60;
