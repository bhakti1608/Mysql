create database if not exists attributes;
use attributes;

create table if not exists attribute_data(
Dress_ID int,
Style varchar(30),
Price varchar(30),
Rating varchar(30),
Size varchar(30),
Season varchar(30),
NeckLine varchar(30),
SleeveLength varchar(30),
waiseline varchar(30),
Material varchar(30),
FabricType varchar(30),
Decoration varchar(30),
Pattern_Type varchar(30),
Recommendation int
);

LOAD DATA INFILE
"D:\AttributeDataSet.csv"
into table attribute_data
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows
;
select * from attribute_data;


select style,price,size,season,material from attribute_data where material="cotton";
select style,price,size,season,material from attribute_data where material="cotton" and season="summer";
select style,price,size,season,material from attribute_data where material="cotton" and season="summer" and size="M";
select sum(rating),season from attribute_data group by season;

select * from attribute_data where rating>=5;
select * from attribute_data where size="free" or size="xl";
select * from attribute_data where size="free" and sleevelength="full";
select min(rating) from attribute_data;
select max(rating) from attribute_data;
select * from attribute_data where size="xl" and season="summer" and price="average";