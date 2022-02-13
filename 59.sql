use worldcup;

select
  c.name,
  p.name,
  g.goal_time
from
  goals as g
  inner join players as p on p.id = g.player_id
  inner join countries as c on c.id = p.country_id;
