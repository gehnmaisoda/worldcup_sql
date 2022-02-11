use worldcup;

select
  concat(name, '選手のポジションは\'', position, '\'です') as 自己紹介
from
  players;

-- concatで文字列とか繋げられるよ！
-- sqlではシングルクオートはエスケープさせないと使えないよ
