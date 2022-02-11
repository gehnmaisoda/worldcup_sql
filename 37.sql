use worldcup;

select
  *
from
  players
where
  weight / POW(height / 100, 2) >= 20
  and weight / POW(height / 100, 2) < 21;

-- BMI
