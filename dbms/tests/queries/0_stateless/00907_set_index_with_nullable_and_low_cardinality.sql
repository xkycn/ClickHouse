SET allow_experimental_data_skipping_indices=1;

drop table if exists test.nullable_set_index;
create table test.nullable_set_index (a UInt64, b Nullable(String), INDEX b_index b TYPE set(0) GRANULARITY 8192) engine = MergeTree order by a;
insert into test.nullable_set_index values (1, 'a');
insert into test.nullable_set_index values (2, 'b');
select * from test.nullable_set_index where b = 'a';
select '-';
select * from test.nullable_set_index where b = 'b';
select '-';
select * from test.nullable_set_index where b = 'c';
select '--';

drop table if exists test.nullable_set_index;
create table test.nullable_set_index (a UInt64, b Nullable(String), INDEX b_index b TYPE set(1) GRANULARITY 8192) engine = MergeTree order by a;
insert into test.nullable_set_index values (1, 'a');
insert into test.nullable_set_index values (2, 'b');
select * from test.nullable_set_index where b = 'a';
select '-';
select * from test.nullable_set_index where b = 'b';
select '-';
select * from test.nullable_set_index where b = 'c';
select '--';

drop table if exists test.nullable_set_index;
create table test.nullable_set_index (a UInt64, b Nullable(String), INDEX b_index b TYPE set(0) GRANULARITY 8192) engine = MergeTree order by a;
insert into test.nullable_set_index values (1, 'a'), (2, 'b');
select * from test.nullable_set_index where b = 'a';
select '-';
select * from test.nullable_set_index where b = 'b';
select '-';
select * from test.nullable_set_index where b = 'c';
select '----';


drop table if exists test.nullable_set_index;
create table test.nullable_set_index (a UInt64, b LowCardinality(Nullable(String)), INDEX b_index b TYPE set(0) GRANULARITY 8192) engine = MergeTree order by a;
insert into test.nullable_set_index values (1, 'a');
insert into test.nullable_set_index values (2, 'b');
select * from test.nullable_set_index where b = 'a';
select '-';
select * from test.nullable_set_index where b = 'b';
select '-';
select * from test.nullable_set_index where b = 'c';
select '--';

drop table if exists test.nullable_set_index;
create table test.nullable_set_index (a UInt64, b LowCardinality(Nullable(String)), INDEX b_index b TYPE set(1) GRANULARITY 8192) engine = MergeTree order by a;
insert into test.nullable_set_index values (1, 'a');
insert into test.nullable_set_index values (2, 'b');
select * from test.nullable_set_index where b = 'a';
select '-';
select * from test.nullable_set_index where b = 'b';
select '-';
select * from test.nullable_set_index where b = 'c';
select '--';

drop table if exists test.nullable_set_index;
create table test.nullable_set_index (a UInt64, b LowCardinality(Nullable(String)), INDEX b_index b TYPE set(0) GRANULARITY 8192) engine = MergeTree order by a;
insert into test.nullable_set_index values (1, 'a'), (2, 'b');
select * from test.nullable_set_index where b = 'a';
select '-';
select * from test.nullable_set_index where b = 'b';
select '-';
select * from test.nullable_set_index where b = 'c';
select '----';

drop table if exists test.nullable_set_index;

