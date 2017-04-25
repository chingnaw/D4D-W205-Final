# D4D-W205-Final
Final for W205 - Working With Data For Democracy for Election Transparency

Members of this final project:
Nikki Haas
I-Ching Wang
Divya Sriram



Before analyzing data, the raw data must be converted properly.  

1. Clone this repo
2. Choose a state to analyze
3. Go to the following website and download zip folder of data for your state (ex: Ohio or OH)
    https://www2.census.gov/census_2010/04-Summary_File_1/
4. Unzip the file
5. Add the unzipped file as is to the cloned repo
6. Run the 'raw_to_table.py' python script with the following command:
   for i in p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p12a p12b p12d p12e p12f p12g p12h p12i p13 p13a p13b p13d p13e p13f p13g p13h p13i p14 p35 p36 p37a p37b p37d p37e p37f p37g p37h p37i p44 p45 p46 p47 p48 p49; do python raw_to_table.py -f oh-raw/ -d $i -s oh -t; done
   Hint: if you clone the github repo, all you need to do is add in a raw-data folder that consists of all the files that were unzipped from the US Census zip file that was downloaded.  All default paths should then work.
   --------------------
    The help menu for this script is:
    python raw_to_table.py -h

    Create properly formatted tab-delimited tables and geo table from raw US Census Gov data.

      -f path to folder that contains the raw data. required
      -d name of the table you want to create (ex. p1, p12a, etc). required
      -o output file name (default is state_table_2010.txt. ie, tn_p1_2010.txt)
      -c headers folder (default is 'header_files_with_text_clean', located in folder you are running in)
      -m map file (default is 'sf1_table_map.csv', located in folder you are running in)
      -s state (ex. tn, ca, nc, etc) required
      -t text header names (default is number header names. trigger text headers by putting '-t')
    -----------------------  
      The output will be:
      (a) tables without headers (ex: oh_p9_2010_no_header.txt) - tables without headers were created in attempt to use hive
      (b) tables with headers (ex: oh_p9_2010.txt)
      (c) oh_geo_cleaned_2010_no_header.txt
        
        
7. Put all newly created files (^above) into a folder for that state (ex: put all files into a folder called "oh_data_cleaned")

Now that all the raw data has been made into clean datasets (tables), we can run some analysis on our data. 

8. Now run the 'gerry_analysis.py' python script to create a bar chart showing the 'Minority Deviation from Mean in Contentious Districts' for your state.
	--------------------
	Help menu for this script is:
	python gerry_analysis.py -h

	Create a plot for the contentious districts difference in population against the mean.

		-i  Input folder.  This should be the folder that contains files generated from raw_to_table.py
		-s  2-letter State identifier
	--------------------
	The output will be a png image file for the race profiles.








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

