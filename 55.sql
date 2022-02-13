use worldcup;

select
  max(height),
  max(weight)
from
  players;

-- グループ関数と呼ぶぜ(全レコードを1つのグループとみなして関数を適用した結果1つ抽出されている = グループ関数)
