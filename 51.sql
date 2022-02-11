use worldcup;

select
  (
    case
      when player_id is null then 9999
      else player_id
    end
  ) as player_id,
  goal_time
from
  goals;

-- case when <条件1> then <表示1>
--  when <条件2> then <表示2>
--  when <条件3> then <表示3>
-- end as <ヘッダー>;
