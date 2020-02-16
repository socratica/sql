
with q as (select *,substr(occurred_on,1,4) year from quake)
select year, cause, sum(1) from q group by year, cause order by 1,2;

select * from quake where magnitude >= 8.0
order by magnitude, occurred_on;

select substr(occurred_on,1,4) year, sum(1)
from quake
where magnitude >= 7.5
group by substr(occurred_on,1,4)
order by 1;

