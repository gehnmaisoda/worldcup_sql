use worldcup;
select
  p.uniform_num as 背番号,
  p.name as 名前,
  p.club as 所属クラブ
from
  players as p
