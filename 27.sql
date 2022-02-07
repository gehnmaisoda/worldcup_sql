use worldcup;

select
  *
from
  countries as c
where
  c.group_name != 'C'

-- point: !=が使える
