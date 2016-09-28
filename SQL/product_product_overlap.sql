USE BBC;

drop table if exists UserId_product;
create table UserId_product (
UserId char(32),
product varchar(20),
count int
);

insert into UserId_product 
select userid, product, count(*) 
from bbc
group by userid, product;

create index userid_product on UserId_product (
UserId,
product
);

select A.product, B.product, count(*)
from UserId_product A,
	UserId_product B
where B.UserId = A.UserId
-- and B.product >= A.product
group by A.product, B.product;