use worldcup;

select
  *
from
  players
where
  (position = 'FW'
  or position = 'MF')
  and height < 170;
