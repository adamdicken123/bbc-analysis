USE BBC;

drop table if exists UserId_platform;
create table UserId_platform (
UserId char(32),
platform varchar(20),
count int
);

insert into UserId_platform 
select userid, platform, count(*) 
from bbc
group by userid, platform;

create index userid_platform on UserId_platform (
UserId,
Platform
);

select A.platform, B.platform, count(*)
from UserId_platform A,
	UserId_platform B
where B.UserId = A.UserId
-- and B.platform >= A.platform
group by A.platform, B.platform;