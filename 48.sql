use worldcup;

select
  *
from
  countries
order by
  CHAR_LENGTH(name) DESC;

-- order byでも単一行関数使えるよ
-- LENGTH 関数はバイト数単位
-- CHAR_LENGTH関数は文字数単位
