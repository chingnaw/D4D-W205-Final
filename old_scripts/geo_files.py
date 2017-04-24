from getopt import getopt
import pandas as pd
import sys
import os
import re
import csv

HELP_STRING = """Create proper geo files for downstream gerrymandering counties.
    -i input raw geo file that was unzipped from raw data
    -s the state which data is being analyzed

"""

# DEFAULTS
widths = [6, 2, 3, 2, 3, 2, 7, 1, 1, 2, 3, 2, 2, 5, 2, 2, 5, 2, 2, 6, 1, 4, 2, 5, 2, 2,
          4, 5, 2, 1, 3, 5, 2, 6, 1, 5, 2, 5, 2, 5, 3, 5, 2, 5, 3, 1, 1, 5, 2, 1, 1, 2, 3, 3, 6, 1,
          3, 5, 5, 2, 5, 5, 5, 14, 14, 90, 1, 1, 9, 9, 11, 12, 2, 1, 6, 5, 8, 8, 8, 8, 8, 8, 8, 8, 8,
          2, 2, 2, 3, 3, 3, 3, 3, 3, 2, 2, 2, 1, 1, 5, 18]

geoFile= None
state = None
# retrieve the user parameters

try:
    optlist, args = getopt(sys.argv[1:], "hi:s:")
except:
    print "Error retrieving options"
    print ""
    print HELP_STRING
    sys.exit(1)

for (opt, opt_arg) in optlist:
    if opt == "-h":
        print ""
        print HELP_STRING
        sys.exit(1)
    elif opt == "-i":
        geoFile = opt_arg
    elif opt == "-s":
        state = opt_arg


# check required parameters exist, and exit otherwise
# if():
#    print HELP_STRING
#   sys.exit(1)

cols = ['col_'+str(x) for x in range(101)]

geo = pd.read_fwf(geoFile, widths = widths, names = cols)

#please note, the following columns are relevant:
"""
col_0: State/U.S. Abbreviation (USPS):  STUSAB 
col_1:Summary Level: SUMLEV 
col_2:Geographic Component: GEOCOMP
col_3:Characteristic Iteration: CHARITER
col_4:Characteristic Iteration File SequenceNumber: CIFSN 
col_5:Logical Record Number: LOGRECNO
col_65: if and only if it contains the word "County"
	it's Area Name-Legal/Statistical Area Description (LSAD) Term-Part Indicator: NAME

ONLY THE ROWS WHERE COLUMN 65 have the word "County" in them are relevant
I would suggest keeping the whole damn file and having
Hive figure it out for us with
WHERE col_65 LIKE 'County'
"""

geo[['col_0','col_1','col_2','col_3','col_4','col_65']].to_csv("%s_geo_cleaned_2010_no_header.csv" % state, sep = ',', index=False, index_label=False, columns = None, header=False)

