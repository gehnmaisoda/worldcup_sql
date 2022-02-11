use worldcup;

select
  *
from
  players
order by
  height desc,
  weight desc;

-- 複数カラムのソート。まず1つ目でソートして同列のものは2つ目でソートされる
