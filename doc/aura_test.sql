TRUNCATE `hive_dimension_data`;

TRUNCATE `storm_dimension_data`;
TRUNCATE `storm_content_data`;
TRUNCATE `storm_content_detail`;

TRUNCATE `streaming_dimension_data`;
TRUNCATE `streaming_content_data`;
TRUNCATE `streaming_content_detail`;

TRUNCATE `sparkcore_dimension_data`;
TRUNCATE `sparkcore_content_data`;
TRUNCATE `sparkcore_content_detail`;

TRUNCATE `mllib_gender_data`;
TRUNCATE `mllib_channel_data`;

SELECT * FROM `hive_dimension_data`;

SELECT * FROM `storm_dimension_data`;
SELECT * FROM `storm_content_data`;
SELECT * FROM `storm_content_detail`;

SELECT * FROM `streaming_dimension_data`;
SELECT * FROM `streaming_content_data`;
SELECT * FROM `streaming_content_detail`;

SELECT * FROM `sparkcore_dimension_data`;
SELECT * FROM `sparkcore_content_data`;
SELECT * FROM `sparkcore_content_detail`;

SELECT * FROM `mllib_gender_data`;
SELECT * FROM `mllib_channel_data`;

================================================================================
hdfs dfs -rm -r /logs/aura
hdfs dfs -rm -r /logs/aura_parquet
drop table aura;
drop table aura_parquet;
invalidate metadata;

TRUNCATE `storm_dimension_data`;
TRUNCATE `storm_content_data`;
TRUNCATE `storm_content_detail`;

UPDATE `hive_dimension_data` SET pv = 0,uv = 0,ip = 0 WHERE DAY = '2016-12-07';

update aura_kudu set count = 40,rate = 10 where id = 2;
update aura_kudu set count = 29,rate = 3 where id = 2;