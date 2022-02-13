use worldcup;

select
  p1.position,
  p1.max_height,
  p2.name,
  p2.club
from
  (
    select
      position,
      max(height) as max_height
    from
      players
    group by
      position
  ) as p1
  left join players as p2 on p1.max_height = p2.height
  and p1.position = p2.position;

-- !!group byを使う時selectにはgroup byを使った列かグループ関数を当てた列士か指定できない
