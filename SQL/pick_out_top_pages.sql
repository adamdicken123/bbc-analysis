use BBC;

select * from(
select DATE_FORMAT(dateandtime, '%Y-%m-%d %H') as Hour, product, name, count(*)
from BBC
where dateandtime between '2016-06-20 21:00:00' and '2016-06-20 22:00:00'
and product = 'sport'
group by name
order by 4 desc
limit 5
) x

union all

select * from(
select DATE_FORMAT(dateandtime, '%Y-%m-%d %H') as Hour, product, name, count(*)
from BBC
where dateandtime between '2016-06-21 21:00:00' and '2016-06-21 22:00:00'
and product = 'sport'
group by name
order by 4 desc
limit 5
) x

union all

select * from(
select DATE_FORMAT(dateandtime, '%Y-%m-%d %H') as Hour, product, name, count(*)
from BBC
where dateandtime between '2016-06-22 18:00:00' and '2016-06-22 19:00:00'
and product = 'sport'
group by name
order by 4 desc
limit 5
) x

union all

select * from(
select DATE_FORMAT(dateandtime, '%Y-%m-%d %H') as Hour, product, name, count(*)
from BBC
where dateandtime between '2016-06-22 21:00:00' and '2016-06-22 22:00:00'
and product = 'sport'
group by name
order by 4 desc
limit 5
) x

union all

select * from(
select DATE_FORMAT(dateandtime, '%Y-%m-%d %H') as Hour, product, name, count(*)
from BBC
where dateandtime between '2016-06-24 08:00:00' and '2016-06-24 09:00:00'
and product = 'news'
group by name
order by 4 desc
limit 5
) x

union all

select * from(
select DATE_FORMAT(dateandtime, '%Y-%m-%d %H') as Hour, product, name, count(*)
from BBC
where dateandtime between '2016-06-24 09:00:00' and '2016-06-24 10:00:00'
and product = 'news'
group by name
order by 4 desc
limit 5
) x

union all

select * from(
select DATE_FORMAT(dateandtime, '%Y-%m-%d %H') as Hour, product, name, count(*)
from BBC
where dateandtime between '	2016-07-06 20:00:00' and '2016-07-06 21:00:00'
and product = 'sport'
group by name
order by 4 desc
limit 5
) x
;