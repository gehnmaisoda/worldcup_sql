use worldcup;

select
  count(*)
from
  goals
where
  player_id between 714
  and 736;

-- countで指定するのは*かPKが普通。PKの方が早いらしいのでPK指定の方が無難かも
