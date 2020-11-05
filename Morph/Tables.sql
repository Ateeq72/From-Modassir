/* For Dropping all tables
drop table mydbase.morph;
drop table mydbase.suffixs;
drop table mydbase.word;
drop table mydbase.wordset;
drop table mydbase.stems;
*/
create schema if not exists `mydbase`;

create table if not exists `mydbase`.`morph` (Word VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci, 
StemList VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
SuffixList   VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci);

create table if not exists `mydbase`.`stems` (
Word VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
Stems VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci);

create table if not exists `mydbase`.`suffixs` (
Word VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
suffix VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci);

create table if not exists `mydbase`.`word` (
wd VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci);

create table if not exists `mydbase`.`wordset` (
word VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci);

truncate table mydbase.morph ;
truncate table mydbase.stems ;
truncate table mydbase.suffixs;
truncate table mydbase.word;
truncate table mydbase.wordset; 

select * from mydbase.morph;
select * from mydbase.stems;
select * from mydbase.suffixs;
select * from mydbase.wordset;
select * from mydbase.word;

select stems,char_length(Stems) as length,count(Stems) as frequency from stems group by Stems;

