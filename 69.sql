use worldcup;

select
  group_name,
  max(ranking) as 最高,
  min(ranking) as 最低
from
  countries
group by
  group_name
having
  最高 - 最低 >= 50;
-- where → group_byの順番で評価されるので、whereに書いてダメ
-- グループかしてさらにその結果に対して条件を付与したい場合はhavingでやる！！

-- 別解
-- select
--   c1.group_name,
--   c1.最高,
--   c1.最低
-- from
--   (
--     select
--       group_name,
--       max(ranking) as 最高,
--       min(ranking) as 最低
--     from
--       countries
--     group by
--       group_name
--   ) as c1
-- where
--   c1.最高 - c1.最低 >= 50;
