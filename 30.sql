use worldcup;

select
  *
from
  countries as c
where
  c.ranking between 36
  and 56

-- ポイントbetweenは両端を含む
