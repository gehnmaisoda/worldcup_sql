use worldcup;

select
  count(player_id)
from
  goals;

-- countに指定したカラムがnullなら集計の対象外だぜ！
