use worldcup;

select
  distinct(position)
from
  players;

-- 重複データを選択しないようにするにはdistictを使う方法とグループ化する方法の2つがある
