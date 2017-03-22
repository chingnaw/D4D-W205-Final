#!/bin/bash

#ONLY PART OF SCRIPT THAT NEEDS TO BE CHANGED:
state = "oh" #change to your state

cleaned_file = 


{ echo " "; cat oh_p2_2010_cleaned.csv; } > oh_p2_2010_cleaned_exline.csv

cat p2_headers_2010.csv oh_p2_2010_cleaned_exline.csv > oh_p2_2010_final.csv

