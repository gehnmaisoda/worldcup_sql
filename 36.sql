use worldcup;

select * from countries
where not group_name = 'A'

-- !=ではなくwhere直後にnotをつけて否定の検索ができる
-- exists演算子と組み合わせて使うことが多いらしい
