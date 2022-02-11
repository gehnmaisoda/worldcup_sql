use worldcup;

select name, date_format(birth, '%Y年%m月%d日') from players;

-- date_formatでのフォーマット
