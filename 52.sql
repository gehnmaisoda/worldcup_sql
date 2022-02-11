use worldcup;

select
  AVG(height),
  AVG(weight)
from
  players;

-- これはグループ関数というやつ。単一行関数は出力行数を変えないが、こいつらはグループ化するので行数が変わる
