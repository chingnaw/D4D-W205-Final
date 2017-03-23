#!/bin/bash

#--------------Read before running script----------

#1
#PLEASE CHANGE STATE ABBREVIATION TO CURRENT STATE WHOSE DATA IS BEING USED

#2
#This script needs to be in the same folder as the header files to be renamed
#This script will change the name of this file, so go back and rename it manually as:
# "script_rename_t_headers_files"

#------------------------------------------------

state=oh

end_of_file=2010_t_headers.csv

name_of_this_file=$0

for file in *; do
        if [ file!=$0 ]; then
                #changing the header file name to match the data file name for each state table
                table_value=`echo $file | cut -d \_ -f1`
		#echo $table_value
		#echo $state"_"$table_value"_"$end_of_file
                mv $file $state"_"$table_value"_"$end_of_file
        fi
done

