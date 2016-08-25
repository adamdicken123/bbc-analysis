USE BBC;

DROP TABLE IF EXISTS BBC;
CREATE TABLE BBC (
	UserId char(32),
	dateandtime timestamp,
	search_term varchar(255),
	platform varchar(20),
	app_type varchar(20),
	product varchar(20),
	name varchar(255),
	pageurl varchar(255),
	region varchar(20)
);

LOAD DATA LOCAL INFILE 'C:/Users/Adam/Documents/GitHub/BBC_Test/Data/0000_part_00' INTO TABLE BBC
FIELDS TERMINATED BY '|';

LOAD DATA LOCAL INFILE 'C:/Users/Adam/Documents/GitHub/BBC_Test/Data/0001_part_00' INTO TABLE BBC
FIELDS TERMINATED BY '|';

LOAD DATA LOCAL INFILE 'C:/Users/Adam/Documents/GitHub/BBC_Test/Data/0002_part_00' INTO TABLE BBC
FIELDS TERMINATED BY '|';

LOAD DATA LOCAL INFILE 'C:/Users/Adam/Documents/GitHub/BBC_Test/Data/0003_part_00' INTO TABLE BBC
FIELDS TERMINATED BY '|';

LOAD DATA LOCAL INFILE 'C:/Users/Adam/Documents/GitHub/BBC_Test/Data/0004_part_00' INTO TABLE BBC
FIELDS TERMINATED BY '|';

LOAD DATA LOCAL INFILE 'C:/Users/Adam/Documents/GitHub/BBC_Test/Data/0005_part_00' INTO TABLE BBC
FIELDS TERMINATED BY '|';

LOAD DATA LOCAL INFILE 'C:/Users/Adam/Documents/GitHub/BBC_Test/Data/0006_part_00' INTO TABLE BBC
FIELDS TERMINATED BY '|';

LOAD DATA LOCAL INFILE 'C:/Users/Adam/Documents/GitHub/BBC_Test/Data/0007_part_00' INTO TABLE BBC
FIELDS TERMINATED BY '|';

create index dateandtime on BBC (
dateandtime
);

create index userid on BBC (
UserId
);

