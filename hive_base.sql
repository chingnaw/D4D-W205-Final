drop table p1;
create external table p1
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p1';

drop table p2;
create external table p2
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
urban string,
urban_areas string,
urban_clusters string,
rural string,
not_def string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p2';

drop table p3;
create external table p3
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
white string,
black string,
native string,
asian string,
haw_pi string,
other string,
two_more string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p3';

drop table p4;
create external table p4
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
not_hisp string,
hisp string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p4';

drop table p5;
create external table p5
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
not_hisp string,
white string,
black string,
native string,
asian string,
haw_pi string,
other string,
two_more string,
hisp string,
white2 string,
black2 string,
native2 string,
asian2 string,
haw_pi2 string,
other2 string,
two_more2 string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p5';

drop table p6;
create external table p6
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
white_plus string,
black_plus string,
native_plus string,
asian_plus string,
haw_pi_plus string,
other_plus string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p6';

drop table p7;
create external table p7
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
not_hisp string,
white_plus string,
black_plus string,
native_plus string,
asian_plus string,
haw_pi_plus string,
other_plus string,
hisp string,
white2_plus string,
black2_plus string,
native2_plus string,
asian2_plus string,
haw_pi2_plus string,
other2_plus string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p7';

drop table p8;
create external table p8
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
pop_one string,
white_alone string,
black_alone string,
native_alone string,
asian_alone string,
haw_pi_alone string,
other_alone string,
two_more string,
pop_two string,
white_black string,
white_native string,
white_asian string,
white_haw string,
white_other string,
black_native string,
black_asian string,
black_haw string,
black_other string,
native_asian string,
native_haw string,
native_other string,
asian_haw string,
asian_other string,
haw_other string,
pop_three string,
white_black_native string,
white_black_asian string,
white_black_haw string,
white_black_other string,
white_native_asian string,
white_native_haw string,
white_native_other string,
white_asian_haw string,
white_asian_other string,
white_haw_other string,
black_native_asian string,
black_native_haw string,
black_native_other string,
black_asian_haw string,
black_asian_other string,
black_haw_other string,
native_asian_haw string,
native_asian_other string,
native_haw_other string,
asian_haw_other string,
pop_four string,
white_black_native_asian string,
white_black_native_haw string,
white_black_native_other string,
white_black_asian_haw string,
white_black_asian_other string,
white_native_asian_haw string,
white_native_asian_other string,
white_native_haw_other string,
white_asian_haw_other string,
black_native_asian_haw string,
black_native_asian_other string,
black_native_haw_other string,
black_asian_haw_other string,
native_asian_haw_other string,
pop_five string,
white_black_native_asian_haw string,
white_black_native_asian_other string,
white_black_native_haw_other string, 
white_black_asian_haw_other string,
white_native_asian_haw_other string,
black_native_asian_haw_other string,
pop_six string,
white_black_native_asian_haw_other string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p8';

drop table p9;
create external table p9
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
hisp string,
not_hisp string,
pop_one string,
white_alone string,
black_alone string,
native_alone string,
asian_alone string,
haw_pi_alone string,
other_alone string,
two_more string,
pop_two string,
white_black string,
white_native string,
white_asian string,
white_haw string,
white_other string,
black_native string,
black_asian string,
black_haw string,
black_other string,
native_asian string,
native_haw string,
native_other string,
asian_haw string,
asian_other string,
haw_other string,
pop_three string,
white_black_native string,
white_black_asian string,
white_black_haw string,
white_black_other string,
white_native_asian string,
white_native_haw string,
white_native_other string,
white_native_asian_other string,
white_native_haw_other string,
white_asian_haw_other string,
black_native_asian_haw string,
black_native_asian_other string,
black_native_haw_other string,
black_asian_haw_other string,
native_asian_haw_other string,
pop_five string,
white_black_native_asian_haw string,
white_black_native_asian_other string,
white_black_native_haw_other string, 
white_black_asian_haw_other string,
white_native_asian_haw_other string,
black_native_asian_haw_other string,
pop_six string,
white_black_native_asian_haw_other string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p9';

drop table p10;
create external table p10
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
pop_one string,
white_alone string,
black_alone string,
native_alone string,
asian_alone string,
haw_pi_alone string,
other_alone string,
two_more string,
pop_two string,
white_black string,
white_native string,
white_asian string,
white_haw string,
white_other string,
black_native string,
black_asian string,
black_haw string,
black_other string,
native_asian string,
native_haw string,
native_other string,
asian_haw string,
asian_other string,
haw_other string,
pop_three string,
white_black_native string,
white_black_asian string,
white_black_haw string,
white_black_other string,
white_native_asian string,
white_native_haw string,
white_native_other string,
white_asian_haw string,
white_asian_other string,
white_haw_other string,
black_native_asian string,
black_native_haw string,
black_native_other string,
black_asian_haw string,
black_asian_other string,
black_haw_other string,
native_asian_haw string,
native_asian_other string,
native_haw_other string,
asian_haw_other string,
pop_four string,
white_black_native_asian string,
white_black_native_haw string,
white_black_native_other string,
white_black_asian_haw string,
white_black_asian_other string,
white_black_haw_other string,
white_native_haw_other string,
white_native_asian_other string,
black_native_asian_haw string,
black_native_asian_other string,
black_native_haw_other string,
black_asian_haw_other string,
native_asian_haw_other string,
pop_five string,
white_black_native_asian_haw string,
white_black_native_asian_other string,
white_black_native_haw_other string, 
white_black_asian_haw_other string,
white_native_asian_haw_other string,
black_native_asian_haw_other string,
pop_six string,
white_black_native_asian_haw_other string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p10';

drop table p11;
create external table p11
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
hisp string,
not_hisp string,
pop_one string,
white_alone string,
black_alone string,
native_alone string,
asian_alone string,
haw_pi_alone string,
other_alone string,
two_more string,
pop_two string,
white_black string,
white_native string,
white_other string,
black_native string,
black_asian string,
black_haw string,
black_other string,
native_asian string,
native_haw string,
native_other string,
asian_haw string,
asian_other string,
haw_other string,
pop_three string,
white_black_native string,
white_black_asian string,
white_black_haw string,
white_black_other string,
white_native_asian string,
white_native_haw string,
white_native_other string,
white_native_asian_other string,
white_native_haw_other string,
white_asian_haw_other string,
black_native_asian_haw string,
black_native_asian_other string,
black_native_haw_other string,
black_asian_haw_other string,
native_asian_haw_other string,
pop_five string,
white_black_native_asian_haw string,
white_black_native_asian_other string,
white_black_native_haw_other string, 
white_black_asian_haw_other string,
white_native_asian_haw_other string,
black_native_asian_haw_other string,
pop_six string,
white_black_native_asian_haw_other string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p11';

drop table p12;
create external table p12
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
male string,
m_under_5 string,
m_yr_5to9 string,
m_yr_10to14 string,
m_yr_15to17 string,
m_yr_18to19 string,
m_yr_20 string,
m_yr_21 string,
m_yr_22to24 string,
m_yr_25to29 string,
m_yr_30to34 string,
m_yr_35to39 string,
m_yr_40to44 string,
m_yr_45to49 string,
m_yr_50to54 string,
m_yr_55to59 string,
m_yr_60to61 string,
m_yr_62to64 string,
m_yr_65to66 string,
m_yr_67to69 string,
m_yr_70to74 string,
m_yr_75to79 string,
m_yr_80to84 string,
m_yr_85plus string,
female string,
fm_under_5 string,
fm_yr_5to9 string,
fm_yr_10to14 string,
fm_yr_15to17 string,
fm_yr_18to19 string,
fm_yr_20 string,
fm_yr_21 string,
fm_yr_22to24 string,
fm_yr_25to29 string,
fm_yr_30to34 string,
fm_yr_35to39 string,
fm_yr_40to44 string,
fm_yr_45to49 string,
fm_yr_50to54 string,
fm_yr_55to59 string,
fm_yr_60to61 string,
fm_yr_62to64 string,
fm_yr_65to66 string,
fm_yr_67to69 string,
fm_yr_70to74 string,
fm_yr_75to79 string,
fm_yr_80to84 string,
fm_yr_85plus string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p12';

drop table p13;
create external table p13
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
both_sex string,
male string,
female string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p13';

drop table p14;
create external table p14
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
male string,
m_under1 string,
m_1 string,
m_2 string,
m_3 string,
m_4 string,
m_5 string,
m_6 string,
m_7 string,
m_8 string,
m_9 string,
m_10 string,
m_11 string,
m_12 string,
m_13 string,
m_14 string,
m_15 string,
m_16 string,
m_17 string,
m_18 string,
m_19 string,
female string,
fm_under1 string,
fm_1 string,
fm_2 string,
fm_3 string,
fm_4 string,
fm_5 string,
fm_6 string,
fm_7 string,
fm_8 string,
fm_9 string,
fm_10 string,
fm_11 string,
fm_12 string,
fm_13 string,
fm_14 string,
fm_15 string,
fm_16 string,
fm_17 string,
fm_18 string,
fm_19 string,
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p14';

drop table p35;
create external table p35
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p35';

drop table p36;
create external table p36
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
under_18 string,
over_18 string
)

ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p36';

drop table p44;
create external table p44
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
not_sub string
sub string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p44';

drop table p45;
create external table p45
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
no_allocated string,
one_plus_allocated string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p45';

drop table p46;
create external table p46
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
allocated string,
not_allocated string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p46';

drop table p47;
create external table p47
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
allocated string,
not_allocated string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p47';

drop table p48;
create external table p48
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
allocated string,
not_allocated string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p48';

drop table p49;
create external table p49
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
allocated string,
not_allocated string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p49';

drop table p12a;
create external table p12a
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
male string,
m_under_5 string,
m_yr_5to9 string,
m_yr_10to14 string,
m_yr_15to17 string,
m_yr_18to19 string,
m_yr_20 string,
m_yr_21 string,
m_yr_22to24 string,
m_yr_25to29 string,
m_yr_30to34 string,
m_yr_35to39 string,
m_yr_40to44 string,
m_yr_45to49 string,
m_yr_50to54 string,
m_yr_55to59 string,
m_yr_60to61 string,
m_yr_62to64 string,
m_yr_65to66 string,
m_yr_67to69 string,
m_yr_70to74 string,
m_yr_75to79 string,
m_yr_80to84 string,
m_yr_85plus string,
female string,
fm_under_5 string,
fm_yr_5to9 string,
fm_yr_10to14 string,
fm_yr_15to17 string,
fm_yr_18to19 string,
fm_yr_20 string,
fm_yr_21 string,
fm_yr_22to24 string,
fm_yr_25to29 string,
fm_yr_30to34 string,
fm_yr_35to39 string,
fm_yr_40to44 string,
fm_yr_45to49 string,
fm_yr_50to54 string,
fm_yr_55to59 string,
fm_yr_60to61 string,
fm_yr_62to64 string,
fm_yr_65to66 string,
fm_yr_67to69 string,
fm_yr_70to74 string,
fm_yr_75to79 string,
fm_yr_80to84 string,
fm_yr_85plus string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p12a';

drop table p12b;
create external table p12b
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
male string,
m_under_5 string,
m_yr_5to9 string,
m_yr_10to14 string,
m_yr_15to17 string,
m_yr_18to19 string,
m_yr_20 string,
m_yr_21 string,
m_yr_22to24 string,
m_yr_25to29 string,
m_yr_30to34 string,
m_yr_35to39 string,
m_yr_40to44 string,
m_yr_45to49 string,
m_yr_50to54 string,
m_yr_55to59 string,
m_yr_60to61 string,
m_yr_62to64 string,
m_yr_65to66 string,
m_yr_67to69 string,
m_yr_70to74 string,
m_yr_75to79 string,
m_yr_80to84 string,
m_yr_85plus string,
female string,
fm_under_5 string,
fm_yr_5to9 string,
fm_yr_10to14 string,
fm_yr_15to17 string,
fm_yr_18to19 string,
fm_yr_20 string,
fm_yr_21 string,
fm_yr_22to24 string,
fm_yr_25to29 string,
fm_yr_30to34 string,
fm_yr_35to39 string,
fm_yr_40to44 string,
fm_yr_45to49 string,
fm_yr_50to54 string,
fm_yr_55to59 string,
fm_yr_60to61 string,
fm_yr_62to64 string,
fm_yr_65to66 string,
fm_yr_67to69 string,
fm_yr_70to74 string,
fm_yr_75to79 string,
fm_yr_80to84 string,
fm_yr_85plus string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p12b';

drop table p12d;
create external table p12d
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
male string,
m_under_5 string,
m_yr_5to9 string,
m_yr_10to14 string,
m_yr_15to17 string,
m_yr_18to19 string,
m_yr_20 string,
m_yr_21 string,
m_yr_22to24 string,
m_yr_25to29 string,
m_yr_30to34 string,
m_yr_35to39 string,
m_yr_40to44 string,
m_yr_45to49 string,
m_yr_50to54 string,
m_yr_55to59 string,
m_yr_60to61 string,
m_yr_62to64 string,
m_yr_65to66 string,
m_yr_67to69 string,
m_yr_70to74 string,
m_yr_75to79 string,
m_yr_80to84 string,
m_yr_85plus string,
female string,
fm_under_5 string,
fm_yr_5to9 string,
fm_yr_10to14 string,
fm_yr_15to17 string,
fm_yr_18to19 string,
fm_yr_20 string,
fm_yr_21 string,
fm_yr_22to24 string,
fm_yr_25to29 string,
fm_yr_30to34 string,
fm_yr_35to39 string,
fm_yr_40to44 string,
fm_yr_45to49 string,
fm_yr_50to54 string,
fm_yr_55to59 string,
fm_yr_60to61 string,
fm_yr_62to64 string,
fm_yr_65to66 string,
fm_yr_67to69 string,
fm_yr_70to74 string,
fm_yr_75to79 string,
fm_yr_80to84 string,
fm_yr_85plus string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p12d';

drop table p12e;
create external table p12e
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
male string,
m_under_5 string,
m_yr_5to9 string,
m_yr_10to14 string,
m_yr_15to17 string,
m_yr_18to19 string,
m_yr_20 string,
m_yr_21 string,
m_yr_22to24 string,
m_yr_25to29 string,
m_yr_30to34 string,
m_yr_35to39 string,
m_yr_40to44 string,
m_yr_45to49 string,
m_yr_50to54 string,
m_yr_55to59 string,
m_yr_60to61 string,
m_yr_62to64 string,
m_yr_65to66 string,
m_yr_67to69 string,
m_yr_70to74 string,
m_yr_75to79 string,
m_yr_80to84 string,
m_yr_85plus string,
female string,
fm_under_5 string,
fm_yr_5to9 string,
fm_yr_10to14 string,
fm_yr_15to17 string,
fm_yr_18to19 string,
fm_yr_20 string,
fm_yr_21 string,
fm_yr_22to24 string,
fm_yr_25to29 string,
fm_yr_30to34 string,
fm_yr_35to39 string,
fm_yr_40to44 string,
fm_yr_45to49 string,
fm_yr_50to54 string,
fm_yr_55to59 string,
fm_yr_60to61 string,
fm_yr_62to64 string,
fm_yr_65to66 string,
fm_yr_67to69 string,
fm_yr_70to74 string,
fm_yr_75to79 string,
fm_yr_80to84 string,
fm_yr_85plus string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p12e';

drop table p12f;
create external table p12f
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
male string,
m_under_5 string,
m_yr_5to9 string,
m_yr_10to14 string,
m_yr_15to17 string,
m_yr_18to19 string,
m_yr_20 string,
m_yr_21 string,
m_yr_22to24 string,
m_yr_25to29 string,
m_yr_30to34 string,
m_yr_35to39 string,
m_yr_40to44 string,
m_yr_45to49 string,
m_yr_50to54 string,
m_yr_55to59 string,
m_yr_60to61 string,
m_yr_62to64 string,
m_yr_65to66 string,
m_yr_67to69 string,
m_yr_70to74 string,
m_yr_75to79 string,
m_yr_80to84 string,
m_yr_85plus string,
female string,
fm_under_5 string,
fm_yr_5to9 string,
fm_yr_10to14 string,
fm_yr_15to17 string,
fm_yr_18to19 string,
fm_yr_20 string,
fm_yr_21 string,
fm_yr_22to24 string,
fm_yr_25to29 string,
fm_yr_30to34 string,
fm_yr_35to39 string,
fm_yr_40to44 string,
fm_yr_45to49 string,
fm_yr_50to54 string,
fm_yr_55to59 string,
fm_yr_60to61 string,
fm_yr_62to64 string,
fm_yr_65to66 string,
fm_yr_67to69 string,
fm_yr_70to74 string,
fm_yr_75to79 string,
fm_yr_80to84 string,
fm_yr_85plus string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p12f';

drop table p12g;
create external table p12g
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
male string,
m_under_5 string,
m_yr_5to9 string,
m_yr_10to14 string,
m_yr_15to17 string,
m_yr_18to19 string,
m_yr_20 string,
m_yr_21 string,
m_yr_22to24 string,
m_yr_25to29 string,
m_yr_30to34 string,
m_yr_35to39 string,
m_yr_40to44 string,
m_yr_45to49 string,
m_yr_50to54 string,
m_yr_55to59 string,
m_yr_60to61 string,
m_yr_62to64 string,
m_yr_65to66 string,
m_yr_67to69 string,
m_yr_70to74 string,
m_yr_75to79 string,
m_yr_80to84 string,
m_yr_85plus string,
female string,
fm_under_5 string,
fm_yr_5to9 string,
fm_yr_10to14 string,
fm_yr_15to17 string,
fm_yr_18to19 string,
fm_yr_20 string,
fm_yr_21 string,
fm_yr_22to24 string,
fm_yr_25to29 string,
fm_yr_30to34 string,
fm_yr_35to39 string,
fm_yr_40to44 string,
fm_yr_45to49 string,
fm_yr_50to54 string,
fm_yr_55to59 string,
fm_yr_60to61 string,
fm_yr_62to64 string,
fm_yr_65to66 string,
fm_yr_67to69 string,
fm_yr_70to74 string,
fm_yr_75to79 string,
fm_yr_80to84 string,
fm_yr_85plus string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p12g';

drop table p12h;
create external table p12h
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
male string,
m_under_5 string,
m_yr_5to9 string,
m_yr_10to14 string,
m_yr_15to17 string,
m_yr_18to19 string,
m_yr_20 string,
m_yr_21 string,
m_yr_22to24 string,
m_yr_25to29 string,
m_yr_30to34 string,
m_yr_35to39 string,
m_yr_40to44 string,
m_yr_45to49 string,
m_yr_50to54 string,
m_yr_55to59 string,
m_yr_60to61 string,
m_yr_62to64 string,
m_yr_65to66 string,
m_yr_67to69 string,
m_yr_70to74 string,
m_yr_75to79 string,
m_yr_80to84 string,
m_yr_85plus string,
female string,
fm_under_5 string,
fm_yr_5to9 string,
fm_yr_10to14 string,
fm_yr_15to17 string,
fm_yr_18to19 string,
fm_yr_20 string,
fm_yr_21 string,
fm_yr_22to24 string,
fm_yr_25to29 string,
fm_yr_30to34 string,
fm_yr_35to39 string,
fm_yr_40to44 string,
fm_yr_45to49 string,
fm_yr_50to54 string,
fm_yr_55to59 string,
fm_yr_60to61 string,
fm_yr_62to64 string,
fm_yr_65to66 string,
fm_yr_67to69 string,
fm_yr_70to74 string,
fm_yr_75to79 string,
fm_yr_80to84 string,
fm_yr_85plus string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p12h';

drop table p12i;
create external table p12i
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
male string,
m_under_5 string,
m_yr_5to9 string,
m_yr_10to14 string,
m_yr_15to17 string,
m_yr_18to19 string,
m_yr_20 string,
m_yr_21 string,
m_yr_22to24 string,
m_yr_25to29 string,
m_yr_30to34 string,
m_yr_35to39 string,
m_yr_40to44 string,
m_yr_45to49 string,
m_yr_50to54 string,
m_yr_55to59 string,
m_yr_60to61 string,
m_yr_62to64 string,
m_yr_65to66 string,
m_yr_67to69 string,
m_yr_70to74 string,
m_yr_75to79 string,
m_yr_80to84 string,
m_yr_85plus string,
female string,
fm_under_5 string,
fm_yr_5to9 string,
fm_yr_10to14 string,
fm_yr_15to17 string,
fm_yr_18to19 string,
fm_yr_20 string,
fm_yr_21 string,
fm_yr_22to24 string,
fm_yr_25to29 string,
fm_yr_30to34 string,
fm_yr_35to39 string,
fm_yr_40to44 string,
fm_yr_45to49 string,
fm_yr_50to54 string,
fm_yr_55to59 string,
fm_yr_60to61 string,
fm_yr_62to64 string,
fm_yr_65to66 string,
fm_yr_67to69 string,
fm_yr_70to74 string,
fm_yr_75to79 string,
fm_yr_80to84 string,
fm_yr_85plus string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p12i';

drop table p13a;
create external table p13a
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
both_sex string,
male string,
female string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p13a';

drop table p13b;
create external table p13b
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
both_sex string,
male string,
female string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p13b';

drop table p13d;
create external table p13d
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
both_sex string,
male string,
female string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p13d';

drop table p13e;
create external table p13e
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
both_sex string,
male string,
female string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p13e';

drop table p13f;
create external table p13f
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
both_sex string,
male string,
female string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p13f';

drop table p13g;
create external table p13g
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
both_sex string,
male string,
female string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p13g';

drop table p13h;
create external table p13h
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
both_sex string,
male string,
female string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p13h';

drop table p13i;
create external table p13i
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
both_sex string,
male string,
female string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p13i';

drop table p37a;
create external table p37a
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
under_18 string,
over_18 string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p37a';

drop table p37b;
create external table p37b
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
under_18 string,
over_18 string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p37b';

drop table p37d;
create external table p37d
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
under_18 string,
over_18 string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p37d';

drop table p37e;
create external table p37e
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
under_18 string,
over_18 string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p37e';

drop table p37f;
create external table p37f
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
under_18 string,
over_18 string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p37f';

drop table p37g;
create external table p37g
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
under_18 string,
over_18 string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p37g';

drop table p37h;
create external table p37h
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
under_18 string,
over_18 string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p37h';

drop table p37i;
create external table p37i
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
total string,
under_18 string,
over_18 string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "\t",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/p37i';

drop table geo_cleaned;
create external table geo_cleaned
(
filedid string,
stusab string,
chariter string,
cifsn string,
logrecno string,
location_name string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/tn_d4d/geo_cleaned';
