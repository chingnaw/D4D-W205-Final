from getopt import getopt
import pandas as pd
import sys
import os
import re
import csv
import numpy as np
from pandasql import sqldf
pysqldf = lambda q: sqldf(q, globals())
import matplotlib.pyplot as plt
import seaborn as sns
sns.set_style("whitegrid")

HELP_STRING = """Create a plot for the contentious districts difference in population against the mean.

    -i  input folder; this should be the folder that contains files generated from raw_to_table.py. required
    -s  2-letter state identifier (ex. tn, oh, nc). required

"""


# DEFAULTS
indices = [0]
inputFolder = None
# county_input = None
state = None

def percentages(df):
    if df['Total'] == 0:
        df['caucasian_percentage'] = 0
        df['african_percentage'] = 0
        df['asian_percentage'] = 0
        df['latino_percentage'] = 0
    else:
        df['caucasian_percentage'] = float(df['White_alone'])/df['Total']
        df['african_percentage'] = float(df['Black_or_African_American_alone'])/df['Total']
        df['asian_percentage'] = float(df['Asian_alone'])/df['Total']
        df['latino_percentage'] = float(df['Hispanic_or_Latino_'])/df['Total']
    return df


def county_info(county_input):
    b = str(county_input).upper()
    q = '''
        select 
        location,
        Congressional_District,
        District_of_Concern,
        asian_deviation_from_mean, 
        african_deviation_from_mean,
        caucasian_deviation_from_mean,
        latino_deviation_from_mean
        from dists
        where location LIKE \'%'''
    q += str(b)
    q += '%\' group by location;'
    print(q)
    df1 = pysqldf(q)
    if df1.shape[0] == 0:
        print("This county's congressional districts are at low risk for gerrymandering.")
    else:
        print(b, "contains the congressional districts ", list(df1['Congressional_District']))
        print("These congressional districts are", list(df1['District_of_Concern']))
        print("The deviation from the mean for African American residents in this County is: ", list(df1['african_deviation_from_mean']))
    return


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
        inputFolder = opt_arg
    elif opt == "-s":
        state = opt_arg
    # elif opt == "-c":
    #     county_input = opt_arg


# check required parameters exist, and exit otherwise
if(inputFolder == None or state == None):
    print "You must specify an input table folder to analyze."
    print HELP_STRING
    sys.exit(1)

df = pd.read_csv('%s/%s_geo_cleaned_2010_no_header.txt' % (inputFolder, state.lower()), sep='\t', header=None, names=['sf', 'st', 'a', 'b', 'c', 'location'], dtype=str)
tn_county_map = pd.read_csv('%s_dist_county_map.csv' % state.lower(), sep = ',')
#p5 combines race and latino origin
p5 = pd.read_csv('%s/%s_p5_2010.txt' % (inputFolder,state.lower()), sep = '\t')

#print df
a = df[df['location'].str.contains("County")==True]
#print a
b = a[a['location'].str.contains("(part)")==False]
c = b[b['location'].str.contains("Schools")==False].index.values.tolist()

for county in c:
    indices.append(county)

p5_edited = p5[['FILEID', 'STUSAB', 'CHARITER', 'CIFSN', 'LOGRECNO','Total','White_alone','Black_or_African_American_alone','Asian_alone','Hispanic_or_Latino_']].ix[indices]
p5_percent = p5_edited.apply(percentages, axis=1)
p5_w_county_name = pd.concat([df['location'].ix[indices], p5_percent], axis=1)

q = 'select p.*, c.* from p5_w_county_name p join tn_county_map c on c.County = p.location;'
comb = pysqldf(q)
comb_all = pd.concat([pd.DataFrame(p5_w_county_name.ix[0]).T,comb], axis =0)
dists = pd.concat([pd.DataFrame(p5_w_county_name.ix[0]).T,comb_all[comb_all['District_of_Concern'] == 'dist of concern']], axis = 0)


### isolate the state's demographic proportions
state_tot = dists.ix[0]['Total']
state_asian = dists.ix[0]['asian_percentage']
state_african = dists.ix[0]['african_percentage']
state_caucasian = dists.ix[0]['caucasian_percentage']
state_latino = dists.ix[0]['latino_percentage']

dists['asian_deviation_from_mean'] = dists['asian_percentage'].map(lambda x: x/state_asian )
dists['african_deviation_from_mean'] = dists['african_percentage'].map(lambda x: x/state_african )
dists['caucasian_deviation_from_mean'] = dists['caucasian_percentage'].map(lambda x: x/state_caucasian)
dists['latino_deviation_from_mean'] = dists['latino_percentage'].map(lambda x: x/state_latino)

dists.drop_duplicates(inplace = True)

# if county_input:
#     county_info(county_input)


plt.figure(figsize=(20, 20))
ax = sns.barplot(x='location', y='asian_deviation_from_mean', data = dists)
ax.set_xticklabels(labels=dists['location'],rotation=60)
ax.set_title('Asian Population Difference from Mean in Contentious Districts, %s' % state.upper())
sns.plt.savefig('%s_asian_deviation.png' % state.lower())

plt.figure(figsize=(20, 20))
ax = sns.barplot(x='location', y='african_deviation_from_mean', data = dists)
ax.set_xticklabels(labels=dists['location'],rotation=60)
ax.set_title('African Population Difference from Mean in Contentious Districts, %s' % state.upper())
sns.plt.savefig('%s_african_deviation.png' % state.lower())

plt.figure(figsize=(20, 20))
ax = sns.barplot(x='location', y='caucasian_deviation_from_mean', data = dists)
ax.set_xticklabels(labels=dists['location'],rotation=60)
ax.set_title('Caucasian Population Difference from Mean in Contentious Districts, %s' % state.upper())
sns.plt.savefig('%s_caucasian_deviation.png' % state.lower())

plt.figure(figsize=(20, 20))
ax = sns.barplot(x='location', y='latino_deviation_from_mean', data = dists)
ax.set_xticklabels(labels=dists['location'],rotation=60)
ax.set_title('Latino Population Difference from Mean in Contentious Districts, %s' % state.upper())
sns.plt.savefig('%s_latino_deviation.png' % state.lower())

n_groups = dists.shape[0]
african_means = dists['african_deviation_from_mean']
latino_means = dists['latino_deviation_from_mean']
asian_means = dists['asian_deviation_from_mean']

# create plot
fig = plt.figure(figsize=(20, 10))

# fig, ax = plt.subplots()
index = np.arange(n_groups)
bar_width = 0.35
opacity = 0.8
rects1 = plt.bar(index, african_means, bar_width, alpha=opacity, color='b', label='African')
rects2 = plt.bar(index + bar_width / 2, latino_means, bar_width, alpha=opacity, color='g', label='Latino')
rects3 = plt.bar(index + bar_width / 2 + 1, asian_means, bar_width, alpha=opacity, color='r', label='Asian')
plt.xlabel('County', fontsize=15)
plt.ylabel('Deviation from State Mean', fontsize=15)
plt.title('Minority Deviation from Mean in Contentious Districts, %s' % state.upper(), fontsize=30)
plt.xticks(index + bar_width, (dists['location']), rotation=60, label=6)
plt.axhline(y=1, color='purple', linestyle='dashed', linewidth=4)
plt.legend(title='Minority Subgroup', fontsize=12)
plt.tight_layout()
plt.savefig('%s_gerrymandering_race_profile.png' % state.lower())


