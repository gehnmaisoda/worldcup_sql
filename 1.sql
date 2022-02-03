-- 各グループの中でFIFAランクが最も高い国と低い国のランキング番号を表示してください。
use worldcup;

select
  group_name AS グループ,
  MIN(ranking) AS 最上位,
  MAX(ranking) AS 最下位
from
  countries
group by
  group_name
