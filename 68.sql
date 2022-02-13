use worldcup;

select
  uniform_num,
  position,
  name,
  height
from
  players
where
  (
    select
      avg(height)
    from
      players
  ) >= height

-- whereに副問い合わせを使うパターン！！
