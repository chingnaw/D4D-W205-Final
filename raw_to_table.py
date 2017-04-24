from getopt import getopt
import sys
import os
import re
import csv

HELP_STRING = """Create proper tables that are PostgresSQL ready from raw US Census Gov data.
    -f path to folder that contains the raw data
    -d name of the table you want to create (ex. p1, p12a, etc)
    -o output file name
    -c header file
    -m map file (default is 'sf1_table_map.csv', located in folder you are running in)
    -s state (ex. tn, ca, nc, etc)
    -t text header names (default is number header names. trigger by putting '-t')

"""

# DEFAULTS 
input = None
output = None
header = None
text = False
folder = None
datatable = None
map = 'sf1_table_map.csv'
state = None
# retrieve the user parameters

try:
    optlist, args = getopt(sys.argv[1:], "hf:d:o:c:m:s:t")
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
    elif opt == "-f":
        folder = opt_arg
    elif opt == "-d":
        datatable = opt_arg
    elif opt == "-o":
        output = opt_arg
    elif opt == "-c":
        header = opt_arg
    elif opt == "-m":
        map = opt_arg
    elif opt == '-s':
        state = opt_arg
    elif opt == "-t":
        text = True

# check required parameters exist, and exit otherwise
# if():
#    print HELP_STRING
#   sys.exit(1)

##grab header info depending on if they want text info or column number info
header_info = []
## insert code to automatically grab header file based on header FOLDER
f=open(header, 'r')
lines = f.readlines()
#print lines
first_line = lines[0]
#print first_line
text_line = lines[1]
pieces = first_line.split(',')
for p in pieces[:5]:
    header_info.append(p)

if text == True:
    pieces2 = text_line.split(',')
    for p in pieces2[5:]:
        p = re.sub(":", "", p)
        p = re.sub(';| ','_', p)
        header_info.append(p)
else:
    for p in pieces[5:]:
        header_info.append(p)

## this part grabs the info for the data table that we want to make
start = 0
stop = 0
with open(map,'r') as mapFile:
    mapping = csv.reader(mapFile, delimiter=',')
    for row in mapping:
        row = ','.join(row)
        if row.split(',')[0].strip() == datatable:
            cols_needed = row.split(',')[3]
            data_num = row.split(',')[2]
            all_cols = cols_needed.split("-")
            start = all_cols[0]
            if len(all_cols) == 2:
                stop = all_cols[1]
            else:
                stop = all_cols[0]

##now we need to make the data table that grabs the correct cols from the raw data
input = open('%s/%s000%s2010.sf1' % (folder,state,data_num), 'r')
nohead = ''.join(output.split('.')[:-1])+'_no_header.txt'
out_nohead = open(nohead, 'w')

inputfile = csv.reader(input,delimiter=',')
for row in inputfile:
    row = ','.join(row)
    data = []
    pieces = row.split(',')
    for i in range(5):
        data.append(pieces[i])
    for i in range(int(start)-1,int(stop)):
        data.append(pieces[i])
    out_nohead.write('%s\n' % ('\t'.join(data)))


input.close()
out_nohead.close()

##make the file with the header
out = open(output, 'w')
out.write('%s' % ('\t'.join(header_info)).strip())
out.write('\n')
with open(nohead,'r') as inFile:
    datafile = csv.reader(inFile, delimiter=',')
    for row in datafile:
        out.write('%s\n' % ('\t'.join(row)))

out.close()