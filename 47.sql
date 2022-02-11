use worldcup;

select
  id, country_id, substring(position, 1, 1), name
from
  players;

-- substring。substring(対象, どこから, 長さ)を切り抜く
-- substring('master', 2, 4) #=> 'aste'
