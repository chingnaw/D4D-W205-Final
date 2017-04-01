#!/bin/bash
#slice_script.sh


### part of the d4d election transparency project
### see github.com/data4Democracy/election-transparency/ for more details
### the sf1_table_map.csv will work for all states in the 2010 census
### it will only bring back the pertinent tables from the 2010 census sf1 file.
### the source files should be the files from the zip downloaded from
### http://www2.census.gov/census_2010/04-Summary_File_1/
### either use a very large AWS, or download one state at a time
### please keep this naming convention for ease of the d4d/election_transparency community

IFS=,
INPUT="sf1_table_map.csv"
fa="nc000" #change to your state, Washington State = wa, Washington, DC = dc, etc
fb="2010.sf1"
fd="cleaned/nc_" #'cleaned/ says a new directory for cleaned data, change to your state'
fe="_2010_cleaned.csv"
base="1-5"

while read table_number total_cell_count corresp_file cols
do
   source_file=$fa$corresp_file$fb
   end_file=$fd$table_number$fe
   #subset the data, making a file for each requested table
   cut -d ',' -f$base,$cols $source_file > $end_file
   echo "$table_number completed"
   #cut -d ',' -f1,2,3,4,5,6 nc000012010.sf1 > cleaned/nc_p1_2010.csv
done < $INPUT