use worldcup

select countries.name as 国名, AVG(players.height) as 平均身長

from countries
inner join players
on countries.id = players.country_id

group by countries.id, countries.name

order by AVG(players.height) DESC
