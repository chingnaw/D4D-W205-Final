# D4D-W205-Final
Final for W205 - Working With Data For Democracy for Election Transparency

Members of this final project:
Nikki Haas
I-Ching Wang
Divya Sriram



Before analyzing data, the raw data must be converted properly.  Please use the raw_to_table python script

To get raw data into cleaned data format, please run:
for i in p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p12a p12b p12d p12e p12f p12g p12h p12i p13 p13a p13b p13d p13e p13f p13g p13h p13i p14 p35 p36 p37a p37b p37d p37e p37f p37g p37h p37i p44 p45 p46 p47 p48 p49; do python raw_to_table.py -f final-project-raw-files/ -d $i -o tn_$i\_2010.txt -c ./header_files_with_text_clean/$i\_headers_2010.csv -s tn -t; done

The help menu for this script is:
python raw_to_table.py -h

Create proper tables that are PostgresSQL ready from raw US Census Gov data.
    -f path to folder that contains the raw data
    -d name of the table you want to create (ex. p1, p12a, etc)
    -o output file name
    -c header file
    -m map file (default is 'sf1_table_map.csv', located in folder you are running in)
    -s state (ex. tn, ca, nc, etc)
    -t text header names (default is number header names. trigger by putting '-t')

##Joining the Data Together

Once the geo tables, the SF1 tables of importance, and the County/CD maps are loaded into HDFS, we can now start doing the fun stuff.  The SF1 tables contain multiple levels of geographic representation, including the whole state, blocks, Census tracts, and counties.  For our w205 analysis, we used the County data.  D4D will ultimately use the block data when the shapefile team completes their cleaning project.  For our purposes, it was not feasible to groom both SF1 data and Shapefiles.  Shapefiles require knowledge of CAD and GPS data that are beyond the scope of our project.  We can subset each p-table by county via joining to the geo file and the county/distric map:

```
SELECT
p.*,
g.*,
c.*
FROM tn_p1 p
JOIN tn_geo_cleaned g
ON concat(p.filedid,'-',p.stusab,'-',p.chariter,'-',p.cifsn,'-',p.logrecno) = concat(g.filedid,'-',g.stusab,'-',g.chariter,'-',g.cifsn,'-',g.logrecno)
JOIN tn_dist_county_map c
on UPPER(g.location) = UPPER(c.county)
WHERE
UPPER(g.location) LIKE '%COUNTY'
and UPPER(g.location) NOT LIKE '%(PART)%';
```

