#!/bin/bash

#1
#the overall directory needs to have 3 folders
#folder 1: data files
#folder 2: header files
#folder 3: final data+header files
#this script will exist in folder 1-->cleaned folder!!

#2
#ONLY PART OF SCRIPT THAT NEEDS TO BE CHANGED ARE THE VARIABLES BELOW
#a) CHANGE TO YOUR STATE
#b) DIRECTORY TO DATA FILES FOLDER
#c) DIRECTORY TO HEADER FILES FOLDER
#d) DIRECTORY TO FINAL DATA+HEADER FILES FOLDER


state=oh #change to your state

dir_data=/Users/divyas/Desktop/D4D/oh2010.sf1/cleaned
dir_headers=/Users/divyas/Desktop/D4D/renamed_t_header_files
dir_final_files=/Users/divyas/Desktop/D4D/final_data_files_proper_headers





for file in *; do
	data_file=$dir_data"/"$file
	table_value=`echo $file | awk -F'[__]' '{print $2}'`
	header_file=$dir_headers"/oh_"$table_value"_2010_t_headers.csv" 

	#this following line creates a new file copy of the data with an empty line concatenated at the top
	{ echo " "; cat $file; } > oh_$table_value"_2010_cleaned_exline.csv"
	cat $dir_headers/oh_$table_value"_2010_t_headers.csv" $dir_data/oh_$table_value"_2010_cleaned_exline.csv" > $dir_final_files/oh_$table_value"_2010_final.csv"
done


